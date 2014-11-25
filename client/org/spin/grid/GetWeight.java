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
package org.spin.grid;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.List;
import java.util.TooManyListenersException;
import java.util.logging.Level;

import javax.comm.NoSuchPortException;
import javax.comm.PortInUseException;
import javax.comm.SerialPortEvent;
import javax.comm.SerialPortEventListener;
import javax.comm.UnsupportedCommOperationException;

import org.compiere.grid.ICreateFrom;
import org.compiere.model.GridTab;
import org.compiere.swing.CLabel;
import org.compiere.swing.CTextField;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.spin.model.MFTAScreenConfig;
import org.spin.model.MFTASerialPortConfig;
import org.spin.model.MFTAWeightScale;
import org.spin.model.MFTAWeightScaleRole;
import org.spin.util.SerialPortManager;

/**
 * @author Yamel Senih
 *
 */
public abstract class GetWeight implements ICreateFrom, SerialPortEventListener {
	
	/**
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 25/03/2013, 19:01:45
	 * @param gridTab
	 */
	public GetWeight(GridTab gridTab) {
		this.gridTab = gridTab;
		log.info(gridTab.toString());
	}	//	GetWeight

	/**	Logger			*/
	protected CLogger log = CLogger.getCLogger(getClass());
	private String title;

	private boolean initOK = false;
	private GridTab gridTab;
	
	
	private InputStream 				i_Stream 				= null;
	private boolean 					started 				= false;
	private boolean						read					= false;
	private List<MFTAWeightScale> 		arrayWS					= null;
	private MFTASerialPortConfig 		currentSerialPortConfig = null;
	private MFTAScreenConfig 			currentScreenConfig		= null;
	private MFTAWeightScale 			currentWeightScale		= null;
	private StringBuffer				m_StrReaded				= new StringBuffer();
	private StringBuffer				m_AsciiReaded			= new StringBuffer();
	private SerialPortManager 			serialPort_M			= null;
	/**	Label Display				*/
	public CLabel 			lDisplay 	= new CLabel();
	/**	Display						*/
	public CTextField 		fDisplay 	= new CTextField();
	/**	Weight Result				*/
	public BigDecimal 		weight		= Env.ZERO;
	/**	Message						*/
	public String			message 	= null;
	
	public abstract boolean dynInit() throws Exception;
	
	
	public boolean save(String trxName) {
		log.fine("save(String)");
		processStr();
		return true;
	}
	
	/**
	 * Open the port and set Listeners
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:50:44
	 * @return boolean
	 */
	protected boolean startService() {
		log.fine("startService()");
		//	verify if exists configuration
		if(currentSerialPortConfig == null){
			message = Msg.translate(Env.getCtx(), "@PortNotConfiguredForUser@");
			return false;
		}
		//	
		try {
			serialPort_M = new SerialPortManager(currentSerialPortConfig);
			serialPort_M.openPort();
			i_Stream = serialPort_M.getInput();
			serialPort_M.addPortListener(this);
			serialPort_M.getSerialPort().notifyOnDataAvailable(true);
			started = true;
		} catch (NoSuchPortException e) {
			message = Msg.translate(Env.getCtx(), "NoSuchPortException") + "\n" + e.getMessage();
			//e.printStackTrace();
		} catch (PortInUseException e) {
			message = Msg.translate(Env.getCtx(), "PortInUseException") + "\n" + e.getMessage();
			//e.printStackTrace();
		} catch (UnsupportedCommOperationException e) {
			message = Msg.translate(Env.getCtx(), "UnsupportedCommOperationException") + "\n" + e.getMessage();
			//e.printStackTrace();
		} catch (IOException e) {
			message = Msg.translate(Env.getCtx(), "IOException") + "\n" + e.getMessage();
			//e.printStackTrace();
		} catch (TooManyListenersException e) {
			stopService();
			message = Msg.translate(Env.getCtx(), "TooManyListenersException") + "\n" + e.getMessage();
			//e.printStackTrace();
		} catch (NoClassDefFoundError e) {
			message = Msg.translate(Env.getCtx(), "NoClassDefFoundError") + "\n" + e.getMessage();
			//e.printStackTrace();
		} catch (UnsatisfiedLinkError e) {
			message = Msg.translate(Env.getCtx(), "UnsatisfiedLinkError") + "\n" + e.getMessage();
			//e.printStackTrace();
		} catch (Exception e) {
			message = e.getMessage();
			//e.printStackTrace();
		}
		return started;
	}

	/**
	 * Get Operation Message
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 02:01:26
	 * @return
	 * @return String
	 */
	protected String getMessage(){
		return message;
	}
	
	/**
	 * Load List Weight Scale
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 03:37:06
	 * @return void
	 */
	protected void loadWeightScale(){
		log.fine("loadSerialPortConfig()");
		//	User
		int m_AD_Role_ID = Env.getAD_Role_ID(Env.getCtx());
		arrayWS = MFTAWeightScaleRole.getWeightScaleOfRole(Env.getCtx(), m_AD_Role_ID, null); 
		//	Set Current Serial Port Configuration
		if(arrayWS.size() != 0){
			currentWeightScale = arrayWS.get(0);
			currentSerialPortConfig = arrayWS.get(0).getSerialPortConfig();
			currentScreenConfig = arrayWS.get(0).getScreenConfig();
		}
	}
	
	/**
	 * Set Current Weight Scale
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 03:38:20
	 * @param index
	 * @return void
	 */
	protected void setCurrentWeightScale(int index){
		currentWeightScale = arrayWS.get(index);
		currentSerialPortConfig = arrayWS.get(index).getSerialPortConfig();
		currentScreenConfig = arrayWS.get(index).getScreenConfig();
	}
	
	/**
	 * Get Array of Serial Port Configuration
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 02:10:47
	 * @return
	 * @return List<MFTAWeightScale>
	 */
	protected List<MFTAWeightScale> getArrayWeightScale(){
		return arrayWS;
	}
	
	/**
	 * Get Current Serial Port Configuration
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 02:11:58
	 * @return
	 * @return MFTAWeightScale
	 */
	protected MFTAWeightScale getCurrentWeightScale(){
		return currentWeightScale;
	}
	
	@Override
	public void serialEvent(SerialPortEvent ev) {
		if(ev.getEventType() == SerialPortEvent.DATA_AVAILABLE){
			//	Read Port
			log.info("SerialPortEvent.DATA_AVAILABLE");
			readPort();
		}
	}
	
	/**
	 * Read the port and set an Display field
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:47:25
	 * @return void
	 */
	private void readPort(){
		log.fine("readPort()");
		try {
			while(i_Stream.available() > 0) {
				int bit = i_Stream.read();
				if(bit == currentScreenConfig.getStartCharacter() 
						&& read == false){
					read = true;
					m_StrReaded = new StringBuffer();
					m_AsciiReaded = new StringBuffer();
				}
				if(read) {
					m_StrReaded.append((char)bit);
					m_AsciiReaded.append("[" + (int)bit + "]");
				}
				if(read 
						&& (bit == currentScreenConfig.getEndCharacter() 
						|| m_StrReaded.length() == currentScreenConfig.getStrLength())){
					read = false;
					try {
						processStr();
					} catch (Exception e) {
						log.warning("Error in processStr(): " + e.getLocalizedMessage());
					}
				} 
			}
        } catch( IOException e ) {
        	message = Msg.translate(Env.getCtx(), "IOException") + "\n" + e.getMessage();
        	log.log(Level.SEVERE, "", e);
        }
	}	//	readPort
	
	/**
	 * Stop Service and close port
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:55:32
	 * @return boolean
	 */
	protected boolean stopService() {
		log.fine("stopService()");
		if(started){
			try {
				serialPort_M.closePort();
				started = false;
			} catch (IOException e) {
				message = Msg.translate(Env.getCtx(), "IOException") + "\n" + e.getMessage();
				e.printStackTrace();
			} catch (Exception e) {
				message = e.getMessage();
				e.printStackTrace();
			}
		}
		return !started;
	}	//	stopService
	
	/**
	 * Process Str and return the getter value
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 04:52:51
	 * @return
	 * @return String
	 */
	protected boolean processStr() {
		log.fine("processStr()");
		log.fine("Ascii Readed = {" + m_AsciiReaded.toString() + "}");
		if(m_StrReaded.length() == currentScreenConfig.getStrLength()){
			String strWeight = m_StrReaded.substring(currentScreenConfig.getPosStartCut(), currentScreenConfig.getPosEndCut()).trim();
			String strWeight_V = m_StrReaded.substring(currentScreenConfig.getPosStart_SCut(), currentScreenConfig.getPosEnd_SCut());
			//	Log
			log.fine("strWeight=" + strWeight);
			log.fine("strWeight_V=" + strWeight_V);
			
			if(strWeight != null
					&& strWeight.length() != 0)
				weight = new BigDecimal(strWeight);
			else
				weight = Env.ZERO;
			fDisplay.setText(strWeight_V);
			return true;
		}else{
			message = Msg.translate(Env.getCtx(), "IncompleteStr");
			log.fine("message=" + message);
			return false;
		}
	}	//	processStr

	@Override
	public boolean isInitOK() {
		return initOK;
	}

	@Override
	public void showWindow() {
		
	}

	@Override
	public void closeWindow() {
		
	}
	
	public void setInitOK(boolean initOK) {
		this.initOK = initOK;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public GridTab getGridTab() {
		return gridTab;
	}

}
