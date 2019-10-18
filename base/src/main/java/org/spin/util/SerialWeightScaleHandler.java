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
import gnu.io.NoSuchPortException;
import gnu.io.PortInUseException;
import gnu.io.SerialPort;
import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;
import gnu.io.UnsupportedCommOperationException;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.util.Enumeration;
import java.util.TooManyListenersException;

import org.compiere.Adempiere;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.spin.model.MADDevice;
import org.spin.model.X_AD_DeviceConfigUse;

/**
 * @author Yamel Senih
 * See: http://fizzed.com/oss/rxtx-for-java
 */
public class SerialWeightScaleHandler extends WeightScaleHandler implements SerialPortEventListener {
	
	public SerialWeightScaleHandler(MADDevice device) {
		super(device);
	}

	/**	Serial Port							*/
	private SerialPort 				serialPort;
	/**	Input Stream						*/
	private InputStream 			inputStream;
	/**	Output Stream						*/
	private OutputStream 			outputStream;
	/**	Stream read						*/
	private StringBuffer 			dataRead;
	/**	Ascii read						*/
	private StringBuffer 			asciiRead;
	/**	Weight							*/
	private BigDecimal 				weight;
	/**	Display Weight					*/
	private String 					displayWeight;
	/**	Start Character					*/
	private int 					startChr;
	/**	End Character					*/
	private int 					endChr;
	/**	Length							*/
	private int 					length;
	
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(SerialWeightScaleHandler.class);
	
	/**
	 * Get Serial Port
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:09:42
	 * @return
	 * @return SerialPort
	 */
	public SerialPort getSerialPort(){
		return serialPort;
	}
	
	@Override
	public boolean isAvailable() throws Exception {
		String port = getConfigValueAsString(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_PORT);
		//	Validate
		if(port == null
				|| port.length() == 0) {
			return false;
		}
		//	Add support to RXTX
		System.setProperty("gnu.io.rxtx.SerialPorts", port);
		Enumeration<?> portList = CommPortIdentifier.getPortIdentifiers();
		while (portList.hasMoreElements()) {
			CommPortIdentifier PortID = (CommPortIdentifier) portList.nextElement();
			if(PortID.getPortType() == CommPortIdentifier.PORT_SERIAL) {
				//	Verify
				if(PortID.getName().equals(port)) {
					log.info("Located " + port);
					return true;
				}
			}
		}
		//	Default
		return false;
	}

	@Override
	public Object connect() throws Exception {
		//	get configuration values
		String port = getConfigValueAsString(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_PORT);
		int speed = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_RS232SPEED);
		int dataBits = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_RS232DATABITS);
		int stopBits = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_RS232STOPBITS);
		int parity = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_RS232PARITY);
		startChr = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, KEY_STARTCHR);
		endChr = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, KEY_ENDCHR);
		length = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, KEY_STRLENGTH);
		//	Set support
		System.setProperty("gnu.io.rxtx.SerialPorts", port);
		try {
			CommPortIdentifier PortID = CommPortIdentifier.getPortIdentifier(port);
			log.info("Opening " + port + " ...");
			serialPort = (SerialPort) PortID.open(Adempiere.NAME + "...", 2000);
			log.info("Parameterizing Port...");
			serialPort.setSerialPortParams(speed, dataBits, stopBits, parity);
			log.info("Port Ready ...");
			inputStream = serialPort.getInputStream();
			outputStream = serialPort.getOutputStream();
			serialPort.addEventListener(this);
			serialPort.notifyOnDataAvailable(true);
		} catch (NoSuchPortException e) {
			throw e;
		} catch (PortInUseException e) {
			throw e;
		} catch (UnsupportedCommOperationException e) {
			close();
			throw e;
		} catch (IOException e) {
			close();
			throw e;
		} catch (TooManyListenersException e) {
			close();
			throw e;
		}
		return serialPort;
	}

	@Override
	public void close() throws Exception {
		if(serialPort != null) {
			serialPort.removeEventListener();
			serialPort.close();
			//	Valid null input stream
			if(inputStream != null) {
				inputStream.close();
			}
			//	Valid null ouput stream
			if(outputStream != null) {
				outputStream.close();
			}
			log.info("Closed");
		}
	}

	@Override
	public Object read() throws Exception {
		return dataRead.toString();
	}

	@Override
	public Object write(Object... value)
			throws Exception {
		return null;
	}

	@Override
	public InputStream getInputStream() {
		return inputStream;
	}

	@Override
	public OutputStream getOutputStream() {
		return outputStream;
	}

	@Override
	public void serialEvent(SerialPortEvent ev) {
		if(ev.getEventType() == SerialPortEvent.DATA_AVAILABLE) {
			try {
				//	Read Port
				log.info("SerialPortEvent.DATA_AVAILABLE");
				boolean read = false;
				//	Iterate
				while(inputStream.available() > 0) {
					int bit = inputStream.read();
					if(bit == startChr
							&& read == false){
						read = true;
						dataRead = new StringBuffer();
						asciiRead = new StringBuffer();
					}
					//	Read
					if(read) {
						dataRead.append((char)bit);
						asciiRead.append("[" + (int)bit + "]");
					}
					//	Already read
					if(read 
							&& (bit == endChr
							|| dataRead.length() == length)){
						read = false;
						processStr();
						log.fine("String read [" + dataRead + "]");
						log.fine("Ascii read [" + asciiRead + "]");
						fireDeviceEvent(DeviceEvent.READ_DATA);
					} 
					log.fine("Weight Measured =" + dataRead);
				}
			} catch (Exception e) {
				log.warning("Error in processStr(): " + e.getLocalizedMessage());
			}
		}
	}

	@Override
	public BigDecimal getWeight() {
		return weight;
	}

	@Override
	public String getDisplayWeight() {
		return displayWeight;
	}
	
	/**
	 * Process Str and return the getter value
	 * @throws Exception
	 * @return void
	 */
	private void processStr() throws Exception {
		log.fine("processStr()");
		int startCutPos = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, IDeviceTypeHandler.KEY_STARTCUTPOS);
		int endCutPos = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, IDeviceTypeHandler.KEY_ENDCUTPOS);
		int screenEndCutPos = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, IDeviceTypeHandler.KEY_SCREENSTARTCUTPOS);
		int screenStartCutPos = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, IDeviceTypeHandler.KEY_SCREENENDCUTPOS);
		String strWeight = null;
		if(dataRead != null) {
			log.fine("Lenght String " + dataRead.length());
			//	Validate length for weight
			if(dataRead.length() > startCutPos
					&& dataRead.length() >= endCutPos) {
				strWeight = dataRead.substring(startCutPos, endCutPos).trim();
			}
			//	Validate length for display weight
			if(dataRead.length() > screenEndCutPos
					&& dataRead.length() >= screenStartCutPos) {
				displayWeight = dataRead.substring(screenEndCutPos, screenStartCutPos);
			}
			//	Log
			log.fine("strWeight=" + strWeight);
			log.fine("strWeight_V=" + displayWeight);
			
			if(strWeight != null
					&& strWeight.length() != 0) {
				weight = new BigDecimal(strWeight);
			} else {
				weight = Env.ZERO;
				displayWeight = null;
			}
		} else {
			weight = Env.ZERO;
			displayWeight = null;
		}
	}	//	processStr
}
