/*************************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                              *
 * This program is free software; you can redistribute it and/or modify it           *
 * under the terms version 2 of the GNU General Public License as published          *
 * by the Free Software Foundation. This program is distributed in the hope          *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied        *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                  *
 * See the GNU General Public License for more details.                              *
 * You should have received a copy of the GNU General Public License along           *
 * with this program; if not, write to the Free Software Foundation, Inc.,           *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                            *
 * For the text or an alternative of this public license, you may reach us           *
 * Copyright (C) 2012-2013 E.R.P. Consultores y Asociados, S.A. All Rights Reserved. *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com                      *
 *************************************************************************************/
package org.erpca.apps.form;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.List;
import java.util.TooManyListenersException;
import java.util.logging.Level;

import org.compiere.apps.ADialog;
import org.compiere.grid.CreateFrom;
import org.compiere.minigrid.IMiniTable;
import org.compiere.model.GridTab;
import org.compiere.swing.CLabel;
import org.compiere.swing.CTextField;
import org.compiere.util.AdempiereUserError;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.erpca.model.MCUSTSerialPortConfig;
import org.erpca.util.SerialPortManager;

import javax.comm.NoSuchPortException;
import javax.comm.PortInUseException;
import javax.comm.SerialPortEvent;
import javax.comm.SerialPortEventListener;
import javax.comm.UnsupportedCommOperationException;

/**
 * @author Yamel Senih
 *
 */
public class GetWeight extends CreateFrom implements SerialPortEventListener {

	/**
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 25/03/2013, 19:01:45
	 * @param gridTab
	 */
	public GetWeight(GridTab gridTab) {
		super(gridTab);
		log.info(gridTab.toString());
	}	//	GetWeight

	/* (non-Javadoc)
	 * @see org.compiere.grid.CreateFrom#dynInit()
	 */
	@Override
	public boolean dynInit() throws Exception {
		log.config("");
		log.fine("dynInit()");
		setTitle(Msg.translate(Env.getCtx(), "GetWeight") + " .. " + Msg.translate(Env.getCtx(), "CreateFrom"));
		return true;
	}

	private InputStream 			i_Stream 		= null;
	private boolean 				started 			= false;
	private boolean					read			= false;
	private MCUSTSerialPortConfig 	m_currentSPC 	= null;
	private StringBuffer			m_StrReaded		= new StringBuffer();
	private SerialPortManager 		serialPort_M	= null;
	/**	Label Display				*/
	public CLabel 			lDisplay 	= new CLabel();
	/**	Display						*/
	public CTextField 		fDisplay 	= new CTextField();
	/**	Weight Result				*/
	public BigDecimal 		weight		= Env.ZERO;
	
	/* (non-Javadoc)
	 * @see org.compiere.grid.CreateFrom#info()
	 */
	@Override
	public void info() {

	}

	/* (non-Javadoc)
	 * @see org.compiere.grid.CreateFrom#save(org.compiere.minigrid.IMiniTable, java.lang.String)
	 */
	@Override
	public boolean save(IMiniTable miniTable, String trxName) {
		log.fine("save(IMinitable, String)");
		return false;
	}
	
	/**
	 * Open the port and set Listeners
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:50:44
	 * @throws NoSuchPortException
	 * @throws PortInUseException
	 * @throws UnsupportedCommOperationException
	 * @throws IOException
	 * @throws TooManyListenersException
	 * @return void
	 * @throws AdempiereUserError 
	 */
	protected void startService() throws NoSuchPortException, PortInUseException, 
						UnsupportedCommOperationException, IOException, TooManyListenersException, AdempiereUserError{
		//	User
		int m_AD_User_ID = Env.getAD_User_ID(Env.getCtx());
		
		List<MCUSTSerialPortConfig> arraySPC = MCUSTSerialPortConfig.getSerialPortConfigOfUser(Env.getCtx(), m_AD_User_ID, null); 
		
		if(arraySPC.size() == 0)
			throw new AdempiereUserError("@PortNotConfiguredforUser@");
		
		m_currentSPC = arraySPC.get(0);
		
		serialPort_M = new SerialPortManager(m_currentSPC);
		serialPort_M.openPort();
		i_Stream = serialPort_M.getInput();
		serialPort_M.addPortListener(this);
		serialPort_M.getSerialPort().notifyOnDataAvailable(true);
		started = true;
	}

	
	@Override
	public void serialEvent(SerialPortEvent ev) {
		if(ev.getEventType() == SerialPortEvent.DATA_AVAILABLE){
			//	Read Port
			readPort();
		}
	}
	
	/**
	 * Read the port and set an Display field
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:47:25
	 * @return void
	 */
	private void readPort(){
		try {
			while(i_Stream.available() > 0) {
				int bit = i_Stream.read();
				if(bit == m_currentSPC.getStartCharacter() 
						&& read == false){
					read = true;
					m_StrReaded = new StringBuffer();
				}
				if(read)
					m_StrReaded.append((char)bit);
				if(read 
						&& bit == m_currentSPC.getEndCharacter() 
						&& m_StrReaded.length() == m_currentSPC.getStrLength()){
					read = false;
					processStr();
				} 
			}
        } catch( IOException e ) {
        	log.log(Level.SEVERE, "", e);
        }
	}	//	readPort
	
	/**
	 * Stop Service and close port
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:55:32
	 * @throws IOException
	 * @return void
	 */
	protected void stopService() throws IOException{
		if(started){
			serialPort_M.closePort();
			started = false;
		}
	}	//	stopService
	
	/**
	 * Process Str and return the getter value
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 04:52:51
	 * @return
	 * @return String
	 */
	protected String processStr() {
		if(m_StrReaded.length() == m_currentSPC.getStrLength()){
			weight = new BigDecimal(m_StrReaded.substring(m_currentSPC.getPosStartCut(), m_currentSPC.getPosEndCut()).trim());
			fDisplay.setText(m_StrReaded.substring(m_currentSPC.getPosStart_SCut(), m_currentSPC.getPosEnd_SCut()));
			return m_StrReaded.substring(m_currentSPC.getPosStartCut(), m_currentSPC.getPosEndCut()).trim();
		}else{
			log.warning(Msg.translate(Env.getCtx(), "Incomplete"));
			return "0";
		}
	}	//	processStr

}
