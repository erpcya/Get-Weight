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
import gnu.io.UnsupportedCommOperationException;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.TooManyListenersException;

import org.compiere.model.GridTab;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.spin.model.MADDevice;
import org.spin.model.X_AD_DeviceConfigUse;
import org.spin.model.X_AD_DeviceType;
import org.spin.util.DeviceEvent;
import org.spin.util.DeviceEventListener;
import org.spin.util.DeviceTypeHandler;
import org.spin.util.IDeviceTypeHandler;

/**
 * @author Yamel Senih
 *
 */
public abstract class GetWeight implements DeviceEventListener {
	
	/**
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 25/03/2013, 19:01:45
	 * @param gridTab
	 */
	public GetWeight(GridTab gridTab) {
		this.gridTab = gridTab;
		log.info(gridTab.toString());
		weight = Env.ZERO;
	}	//	GetWeight

	/**	Logger			*/
	protected CLogger log = CLogger.getCLogger(getClass());
	private String title;
	
	private GridTab gridTab;
	
	
	private boolean 					started 				= false;
	private MADDevice[] 				arrayWS					= null;
	private MADDevice 					currentDevice 			= null;
	private DeviceTypeHandler 			handler					= null;
	
	/**	Weight Result				*/
	private BigDecimal 		weight		= Env.ZERO;
	/**	Message						*/
	private String			message 	= null;
	
	/**
	 * Init
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 20, 2016, 4:41:04 PM
	 * @return
	 * @throws Exception
	 * @return boolean
	 */
	public abstract boolean dynInit() throws Exception;
	
	/**
	 * Refresh Display
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 20, 2016, 10:27:13 PM
	 * @param value
	 * @return void
	 */
	public abstract void refreshDisplay(String value);
	
	/**
	 * Save
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 19, 2016, 11:54:10 PM
	 * @param trxName
	 * @return
	 * @return boolean
	 */
	public boolean save(String trxName) {
		log.fine("save(String)");
		boolean isOk = false;
		try {
			processStr();
			isOk = true;
		} catch(Exception e) {
			log.severe(e.getMessage());
		}
		//	Default return
		return isOk;
	}
	
	/**
	 * Open the port and set Listeners
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:50:44
	 * @return boolean
	 */
	protected boolean startService() {
		log.fine("startService()");
		//	verify if exists configuration
		if(currentDevice == null) {
			message = Msg.translate(Env.getCtx(), "@PortNotConfiguredForUser@");
			return false;
		}
		//	Already started
		if(started) {
			return true;
		}
		//	
		try {
			handler = currentDevice.getDeviceHandler();
			handler.connect();
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
	 * @throws Exception 
	 */
	protected void loadWeightScale() throws Exception {
		log.fine("loadSerialPortConfig()");
		arrayWS = DeviceTypeHandler.getAvailableDevices(Env.getCtx(), X_AD_DeviceType.DEVICETYPE_WeightScale);
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
	 * @return MADDevice
	 */
	protected MADDevice getCurrentWeightScale(){
		return currentDevice;
	}
	
	/**
	 * Stop Service and close port
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:55:32
	 * @return boolean
	 */
	protected boolean stopService() {
		log.fine("stopService()");
		if(started){
			log.fine("Port Started " + started);
			try {
				handler.close();
				started = false;
				log.fine("Port Started " + started);
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
	 * @throws Exception 
	 */
	protected boolean processStr() throws Exception {
		log.fine("processStr()");
		String value = (String) handler.read();
		int startCutPos = handler.getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, IDeviceTypeHandler.KEY_START_CUT_POS);
		int endCutPos = handler.getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, IDeviceTypeHandler.KEY_END_CUT_POS);
		int screenEndCutPos = handler.getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, IDeviceTypeHandler.KEY_SCREEN_START_CUT_POS);
		int screenStartCutPos = handler.getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, IDeviceTypeHandler.KEY_SCREEN_END_CUT_POS);
		if(value != null) {
			log.fine("Lenght String " + value.length());
			String strWeight = value.substring(startCutPos, endCutPos).trim();
			String strWeight_V = value.substring(screenEndCutPos, screenStartCutPos);

			//	Log
			log.fine("strWeight=" + strWeight);
			log.fine("strWeight_V=" + strWeight_V);
			
			if(strWeight != null
					&& strWeight.length() != 0) {
				weight = new BigDecimal(strWeight);
			} else {
				weight = Env.ZERO;
			}
			refreshDisplay(strWeight_V);
			return true;
		} else {
			message = Msg.translate(Env.getCtx(), "IncompleteStr");
			log.fine("message=" + message);
			return false;
		}
	}	//	processStr
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public GridTab getGridTab() {
		return gridTab;
	}
	
	@Override
	public void deviceEvent(DeviceEvent ev) {
		if(ev.getEventType() == DeviceEvent.READ_DATA) {
			try {
				processStr();
			} catch(Exception e) {
				log.severe(e.getMessage());
			}
		}
	}

	/**
	 * Get Weight
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 20, 2016, 10:35:49 PM
	 * @return
	 * @return BigDecimal
	 */
	public BigDecimal getWeight() {
		return weight;
	}
	
	/**
	 * Get message
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 20, 2016, 10:36:15 PM
	 * @return
	 * @return String
	 */
	public String getMsg() {
		return message;
	}
}
