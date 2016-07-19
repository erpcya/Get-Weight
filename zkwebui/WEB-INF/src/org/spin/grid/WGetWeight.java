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

import gnu.io.NoSuchPortException;
import gnu.io.PortInUseException;
import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;
import gnu.io.UnsupportedCommOperationException;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.TooManyListenersException;
import java.util.logging.Level;

import org.adempiere.webui.component.Label;
import org.adempiere.webui.component.Textbox;
import org.compiere.grid.ICreateFrom;
import org.compiere.model.GridTab;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.spin.model.I_AD_Device;
import org.spin.model.MADDevice;
import org.spin.util.SerialPortManager;

/**
 * @author Yamel Senih
 *
 */
public class WGetWeight implements ICreateFrom, SerialPortEventListener {
	
	/**
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 25/03/2013, 19:01:45
	 * @param gridTab
	 */
	public WGetWeight(GridTab gridTab) {
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
	private MADDevice[] 				arrayWS					= null;
	private MADDevice 					currentDevice 			= null;
	private StringBuffer				m_StrReaded				= new StringBuffer();
	private StringBuffer				m_AsciiReaded			= new StringBuffer();
	private SerialPortManager 			serialPort_M			= null;
	/**	Label Display				*/
	public Label 			lDisplay 	= new Label();
	/**	Display						*/
	public Textbox 		fDisplay 	= new Textbox();
	/**	Weight Result				*/
	public BigDecimal 		weight		= Env.ZERO;
	/**	Message						*/
	public String			message 	= null;
	
	public boolean dynInit() throws Exception {
		log.config("");
		setTitle("Record Weight");
		return true;
	}
	
	
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
		if(currentDevice == null){
			message = Msg.translate(Env.getCtx(), "@PortNotConfiguredForUser@");
			return false;
		}
		//	
		try {
			serialPort_M = new SerialPortManager(currentDevice);
			serialPort_M.connect();
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
		arrayWS = MADDevice.getDeviceList(Env.getCtx(), 
				I_AD_Device.COLUMNNAME_AD_Org_ID + " = " + Env.getAD_Org_ID(Env.getCtx()), null); 
		//	Set Current Serial Port Configuration
		setDevice(0);
	}
	
	/**
	 * Set device
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 18, 2016, 4:29:32 PM
	 * @param index
	 * @return void
	 */
	private void setDevice(int index) {
		if(arrayWS != null
				&& arrayWS.length != 0) {
			currentDevice = arrayWS[0];
		}
	}
	
	/**
	 * Set Current Weight Scale
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 03:38:20
	 * @param index
	 * @return void
	 */
	protected void setCurrentWeightScale(int index){
		setDevice(index);
		//	Dixon Martinez 2015-02-03
		//	Set value of Weight Scale
		Env.setContext(currentDevice.getCtx(), "AD_Device_ID", currentDevice.get_ID());
		//	End Dixon Martinez
	}
	
	/**
	 * Get Array of Serial Port Configuration
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 02:10:47
	 * @return
	 * @return MADDevice[]
	 */
	protected MADDevice[] getArrayWeightScale(){
		return arrayWS;
	}
	
	/**
	 * Get Current Serial Port Configuration
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 02:11:58
	 * @return
	 * @return MFTAWeightScale
	 */
	protected MADDevice getCurrentWeightScale(){
		return currentDevice;
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
				if(bit == serialPort_M.getStartCharacter() 
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
						&& (bit == serialPort_M.getEndCharacter() 
						|| m_StrReaded.length() == serialPort_M.getStrLength())){
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
				serialPort_M.close();
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
		if(m_StrReaded.length() == serialPort_M.getStrLength()){
			String strWeight = m_StrReaded.substring(serialPort_M.getStartCutPos(), serialPort_M.getEndCutPos()).trim();
			String strWeight_V = m_StrReaded.substring(serialPort_M.getScreenStartCutPos(), serialPort_M.getScreenEndCutPos());
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
