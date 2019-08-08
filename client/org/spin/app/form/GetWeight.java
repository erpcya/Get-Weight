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
package org.spin.app.form;

import gnu.io.NoSuchPortException;
import gnu.io.PortInUseException;
import gnu.io.UnsupportedCommOperationException;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;
import java.util.TooManyListenersException;

import org.compiere.model.MTable;
import org.compiere.model.PO;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Util;
import org.spin.model.MADDevice;
import org.spin.model.X_AD_DeviceType;
import org.spin.util.DeviceEvent;
import org.spin.util.DeviceEventListener;
import org.spin.util.DeviceTypeHandler;
import org.spin.util.WeightScaleHandler;

/**
 * Controller for get weight
 * @author Yamel Senih
 */
public abstract class GetWeight implements DeviceEventListener {
	
	
	public GetWeight() {
		log.info("");
		weight = Env.ZERO;
	}	//	GetWeight

	/**	Logger			*/
	protected CLogger log = CLogger.getCLogger(getClass());
	
	private boolean started = false;
	private List<MADDevice> weightScaleList = null;
	private MADDevice currentDevice = null;
	private WeightScaleHandler handler = null;
	private PO currentEntity = null;	
	/**	Weight Result				*/
	private BigDecimal weight = Env.ZERO;
	/**	Message						*/
	private StringBuffer message = new StringBuffer();
	private final String COLUMNNAME_WeightRegistered = "WeightRegistered";
	
	/**
	 * Set from PO
	 * @param processInfo
	 */
	public void setFromPO(ProcessInfo processInfo) {
		if(processInfo != null
				&& processInfo.getTable_ID() > 0
				&& processInfo.getRecord_ID() > 0) {
			currentEntity = MTable.get(Env.getCtx(), processInfo.getTable_ID())
				.getPO(processInfo.getRecord_ID(), null);
		}
	}
	
	/**
	 * Init
	 * @return
	 * @throws Exception
	 * @return boolean
	 */
	public abstract boolean dynInit() throws Exception;
	
	/**
	 * Refresh Display
	 * @param value
	 * @return void
	 */
	public abstract void refreshDisplay(String value);
	
	/**
	 * Open the port and set Listeners
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:50:44
	 * @return boolean
	 */
	protected boolean startService() {
		log.fine("startService()");
		//	verify if exists configuration
		if(currentDevice == null) {
			message.append(Msg.translate(Env.getCtx(), "@PortNotConfiguredForUser@"));
			return false;
		}
		//	Already started
		if(started) {
			return true;
		}
		//	
		try {
			handler = (WeightScaleHandler) currentDevice.getDeviceHandler();
			handler.addDeviceListener(this);
			handler.connect();
			started = true;
		} catch (NoSuchPortException e) {
			message.append("@NoSuchPortException@"+ " (" + e.getMessage() + ")");
		} catch (PortInUseException e) {
			message.append("@PortInUseException@"+ " (" + e.getMessage() + ")");
		} catch (UnsupportedCommOperationException e) {
			message.append("@UnsupportedCommOperationException@"+ " (" + e.getMessage() + ")");
		} catch (IOException e) {
			message.append("@IOException@"+ " (" + e.getMessage() + ")");
		} catch (TooManyListenersException e) {
			stopService();
			message.append("@TooManyListenersException@"+ " (" + e.getMessage() + ")");
		} catch (NoClassDefFoundError e) {
			message.append("@NoClassDefFoundError@"+ " (" + e.getMessage() + ")");
		} catch (UnsatisfiedLinkError e) {
			message.append("@UnsatisfiedLinkError@"+ " (" + e.getMessage() + ")");
		} catch (Exception e) {
			message.append(e.getMessage());
		}
		return started;
	}

	/**
	 * Get Operation Message
	 * @return
	 * @return String
	 */
	protected String getMessage() {
		if(message.length() == 0) {
			return null;
		}
		//	
		return message.toString();
	}
	
	/**
	 * Add Message to queue
	 * @param message
	 * @return void
	 */
	protected void addMessage(String message) {
		if(Util.isEmpty(message)) {
			return;
		}
		//	
		if(this.message.length() > 0) {
			this.message.append(Env.NL);
		}
		this.message.append(message);
	}
	
	/**
	 * Load List Weight Scale
	 * @return void
	 * @throws Exception 
	 */
	protected void loadWeightScale() throws Exception {
		log.fine("loadSerialPortConfig()");
		weightScaleList = Arrays.asList(DeviceTypeHandler.getDevices(Env.getCtx(), X_AD_DeviceType.DEVICETYPE_WeightScale, true));
		//	Set Current Serial Port Configuration
		setDevice(0);
	}
	
	/**
	 * Set device
	 * @param index
	 * @return void
	 */
	private void setDevice(int index) {
		if(weightScaleList != null
				&& !weightScaleList.isEmpty()) {
			currentDevice = weightScaleList.stream().findFirst().get();
		}
	}
	
	/**
	 * Set Current Weight Scale
	 * @param index
	 * @return void
	 */
	protected void setCurrentWeightScale(int index){
		setDevice(index);
		Env.setContext(currentDevice.getCtx(), "AD_Device_ID", currentDevice.getAD_Device_ID());
	}
	
	/**
	 * Get Array of Serial Port Configuration
	 * @return
	 * @return List<MADDevice>
	 */
	protected List<MADDevice> getWeightScaleList(){
		return weightScaleList;
	}
	
	/**
	 * Get Current Serial Port Configuration
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
				handler.removeDeviceListener(this);
				started = false;
				log.fine("Port Started " + started);
			} catch (IOException e) {
				message.append(Msg.translate(Env.getCtx(), "IOException") + "\n" + e.getMessage());
				e.printStackTrace();
			} catch (Exception e) {
				message.append(e.getMessage());
				e.printStackTrace();
			}
		}
		return !started;
	}	//	stopService
	
	@Override
	public void deviceEvent(DeviceEvent ev) {
		if(ev.getEventType() == DeviceEvent.READ_DATA) {
			try {
				weight = handler.getWeight();
				refreshDisplay(handler.getDisplayWeight());
			} catch(Exception e) {
				log.severe(e.getMessage());
			}
		}
	}

	/**
	 * Get Weight
	 * @return BigDecimal
	 */
	public BigDecimal getWeight() {
		return weight;
	}
	
	/**
	 * Process value from display
	 * @return void
	 */
	protected void processValue() {
		if(currentEntity != null) {
			currentEntity.set_ValueOfColumn(COLUMNNAME_WeightRegistered, getWeight());
			currentEntity.saveEx();
		}
	}
}
