/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2013 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com               *
 *****************************************************************************/
package org.spin.util;

import gnu.io.CommPortIdentifier;
import gnu.io.SerialPort;
import gnu.io.SerialPortEventListener;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.TooManyListenersException;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.Adempiere;
import org.compiere.util.CLogger;
import org.spin.model.MADDevice;
import org.spin.model.MADDeviceConfig;
import org.spin.model.X_AD_DeviceConfigUse;

/**
 * @author Yamel Senih
 *
 */
public class SerialPortManager extends DeviceTypeManagement {
	
	public SerialPortManager(MADDevice device) {
		super(device);
	}
	
	public SerialPortManager() {
		super();
	}

	/**	Port Identifier						*/
	private CommPortIdentifier 		PortID;
	/**	Port List							*/
	private Enumeration<?> 			portList;
	/**	Serial Port							*/
	private SerialPort 				serialPort;
	/**	Input Stream						*/
	private InputStream 			i_Stream;
	/**	Output Stream						*/
	private OutputStream 			o_Stream;
	/**	Connection attributes				*/
	private MADDeviceConfig 		connectionConfig = null;
	/**	Read Configuration					*/
	private MADDeviceConfig 		readConfig = null;
	/**	Keys of Attributes					*/
	public static final String		KEY_PORT = "Port";
	public static final String		KEY_SPEED = "Speed";
	public static final String		KEY_PARITY = "Parity";
	public static final String		KEY_DATA_BITS = "DataBits";
	public static final String		KEY_STOP_BITS = "StopBits";
	public static final String		KEY_FLOW_CONTROL = "FlowControl";
	public static final String		KEY_STR_LENGTH = "StrLength";
	public static final String		KEY_START_CHR = "StartChr";
	public static final String		KEY_END_CHR = "EndChr";
	public static final String		KEY_START_CUT_POS = "StartCutPos";
	public static final String		KEY_END_CUT_POS = "EndCutPos";
	public static final String		KEY_SCREEN_START_CUT_POS = "Screen_StartCutPos";
	public static final String		KEY_SCREEN_END_CUT_POS = "Screen_EndCutPos";
	
	
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(SerialPortManager.class);

	
	/**
	 * Add Port Listener
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:07:37
	 * @param env
	 * @return void
	 * @throws TooManyListenersException 
	 */
	public void addPortListener(SerialPortEventListener env) throws TooManyListenersException{
		serialPort.addEventListener(env);
	}
	
	/**
	 * Get Serial Port
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:09:42
	 * @return
	 * @return SerialPort
	 */
	public SerialPort getSerialPort(){
		return serialPort;
	}
	
	/**
	 * Get Input Stream
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:26:25
	 * @return
	 * @return InputStream
	 */
	public InputStream getInput(){
		return i_Stream;
	}
	
	/**
	 * Get Output Stream
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:27:07
	 * @return
	 * @return OutputStream
	 */
	public OutputStream getOutput(){
		return o_Stream;
	}
	
	@Override
	public MADDevice[] getAvailableDevices(MADDevice[] currentDevices) throws Exception {
		System.setProperty("gnu.io.rxtx.SerialPorts", "/dev/pts/7");
		ArrayList<MADDevice> availableDevices = new ArrayList<MADDevice>();
		portList = CommPortIdentifier.getPortIdentifiers();
		while (portList.hasMoreElements()) {
			PortID = (CommPortIdentifier) portList.nextElement();
			if(PortID.getPortType() == CommPortIdentifier.PORT_SERIAL) {
				//	Verify
				for(MADDevice device : currentDevices) {
					MADDeviceConfig config = device.getDeviceConfig(X_AD_DeviceConfigUse.CONFIGTYPE_Connection);
					if(config == null)
						continue;
					if(PortID.getName().equals(config.getConfigValueAsString(KEY_PORT))) {
						log.info("Located " + config.getConfigValueAsString(KEY_PORT));
						availableDevices.add(device);
					}
				}
			}
		}
		//	Convert to array
		return availableDevices.toArray(new MADDevice[availableDevices.size()]);
	}

	@Override
	protected Object connect(MADDeviceConfig config) throws Exception {
		connectionConfig = config;
		//	Set support
		System.setProperty("gnu.io.rxtx.SerialPorts", config.getConfigValueAsString(KEY_PORT));
		PortID = CommPortIdentifier.getPortIdentifier(config.getConfigValueAsString(KEY_PORT));
		log.info("Opening " + config.getConfigValueAsString(KEY_PORT) + " ...");
		serialPort = (SerialPort) PortID.open(Adempiere.NAME + "...", 2000);
		log.info("Parameterizing Port...");
		serialPort.setSerialPortParams(config.getConfigValueAsInt(KEY_SPEED),
				config.getConfigValueAsInt(KEY_DATA_BITS),
				config.getConfigValueAsInt(KEY_STOP_BITS),
				config.getConfigValueAsInt(KEY_PARITY));
		log.info("Port Ready ...");
		i_Stream = serialPort.getInputStream();
		o_Stream = serialPort.getOutputStream();
		return serialPort;
	}

	@Override
	public void close(MADDeviceConfig config) throws Exception {
		if(serialPort != null){
			i_Stream.close();
			o_Stream.close();
			serialPort.close();
			log.info("Closed " + connectionConfig.getConfigValueAsString(KEY_PORT));
		}
	}

	@Override
	protected Object read(MADDeviceConfig config, Object[]... value)
			throws Exception {
		readConfig = config;
		return null;
	}

	@Override
	protected Object write(MADDeviceConfig config, Object[]... value)
			throws Exception {
		return null;
	}

	@Override
	protected boolean isCheckOk() {
		return serialPort != null;
	}
	
	/**
	 * Get read Configuration
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 18, 2016, 4:36:50 PM
	 * @return
	 * @return MADDeviceConfig
	 */
	public MADDeviceConfig getReadConfig() {
		if(readConfig == null)
			readConfig = getDeviceConfig(X_AD_DeviceConfigUse.CONFIGTYPE_Read, false);
		//	Validate
		if(readConfig == null)
			throw new AdempiereException("@AD_DeviceConfig_ID@ @NotFound@");
		//	Default Return
		return readConfig;
	}
	
	/**
	 * Get Start Character
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 18, 2016, 4:40:39 PM
	 * @return
	 * @return int
	 */
	public int getStartCharacter() {
		return getReadConfig().getConfigValueAsInt(KEY_START_CHR);
	}
	
	/**
	 * Get End Character
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 18, 2016, 4:41:19 PM
	 * @return
	 * @return int
	 */
	public int getEndCharacter() {
		return getReadConfig().getConfigValueAsInt(KEY_END_CHR);
	}
	
	/**
	 * Get Stream length
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 18, 2016, 4:45:40 PM
	 * @return
	 * @return int
	 */
	public int getStrLength() {
		return getReadConfig().getConfigValueAsInt(KEY_STR_LENGTH);
	}
	
	/**
	 * Get Start cut position
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 18, 2016, 4:45:50 PM
	 * @return
	 * @return int
	 */
	public int getStartCutPos() {
		return getReadConfig().getConfigValueAsInt(KEY_START_CUT_POS);
	}
	
	/**
	 * Get end cut position
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 18, 2016, 4:46:04 PM
	 * @return
	 * @return int
	 */
	public int getEndCutPos() {
		return getReadConfig().getConfigValueAsInt(KEY_END_CUT_POS);
	}
	
	/**
	 * Get screen start cut position
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 18, 2016, 4:46:08 PM
	 * @return
	 * @return int
	 */
	public int getScreenStartCutPos() {
		return getReadConfig().getConfigValueAsInt(KEY_SCREEN_END_CUT_POS);
	}
	
	/**
	 * Get Screen End cut position
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> Jul 18, 2016, 4:46:18 PM
	 * @return
	 * @return int
	 */
	public int getScreenEndCutPos() {
		return getReadConfig().getConfigValueAsInt(KEY_SCREEN_END_CUT_POS);
	}
}
