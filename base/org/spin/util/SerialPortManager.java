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
import gnu.io.SerialPortEvent;
import gnu.io.SerialPortEventListener;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;

import org.compiere.Adempiere;
import org.compiere.util.CLogger;
import org.spin.model.MADDevice;
import org.spin.model.X_AD_DeviceConfigUse;

/**
 * @author Yamel Senih
 *
 */
public class SerialPortManager extends DeviceTypeHandler implements SerialPortEventListener {
	
	public SerialPortManager(MADDevice device) {
		super(device);
	}

	/**	Serial Port							*/
	private SerialPort 				serialPort;
	/**	Input Stream						*/
	private InputStream 			i_Stream;
	/**	Output Stream						*/
	private OutputStream 			o_Stream;
	/**	Stream read						*/
	private StringBuffer 			dataRead;
	/**	Ascii read						*/
	private StringBuffer 			asciiRead;
	/**	Start Character					*/
	private int 					startChr;
	/**	End Character					*/
	private int 					endChr;
	/**	Length							*/
	private int 					length;
	
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(SerialPortManager.class);
	
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
		int speed = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_SPEED);
		int dataBits = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_DATA_BITS);
		int stopBits = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_STOP_BITS);
		int parity = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Connection, KEY_PARITY);
		startChr = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, KEY_START_CHR);
		endChr = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, KEY_END_CHR);
		length = getConfigValueAsInt(X_AD_DeviceConfigUse.CONFIGTYPE_Read, KEY_STR_LENGTH);
		//	Set support
		System.setProperty("gnu.io.rxtx.SerialPorts", port);
		CommPortIdentifier PortID = CommPortIdentifier.getPortIdentifier(port);
		log.info("Opening " + port + " ...");
		serialPort = (SerialPort) PortID.open(Adempiere.NAME + "...", 2000);
		log.info("Parameterizing Port...");
		serialPort.setSerialPortParams(speed, dataBits, stopBits, parity);
		log.info("Port Ready ...");
		i_Stream = serialPort.getInputStream();
		o_Stream = serialPort.getOutputStream();
		serialPort.addEventListener(this);
		serialPort.notifyOnDataAvailable(true);
		return serialPort;
	}

	@Override
	public void close() throws Exception {
		if(serialPort != null) {
			serialPort.removeEventListener();
			serialPort.close();
			i_Stream.close();
			o_Stream.close();
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
	public boolean isCheckOk() {
		return serialPort != null;
	}

	@Override
	public InputStream getInputStream() {
		return i_Stream;
	}

	@Override
	public OutputStream getOutputStream() {
		return o_Stream;
	}

	@Override
	public void serialEvent(SerialPortEvent ev) {
		if(ev.getEventType() == SerialPortEvent.DATA_AVAILABLE) {
			try {
				//	Read Port
				log.info("SerialPortEvent.DATA_AVAILABLE");
				boolean read = false;
				//	Iterate
				while(i_Stream.available() > 0) {
					int bit = i_Stream.read();
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
						log.fine("String read [" + dataRead + "]");
						log.fine("Ascii read [" + asciiRead + "]");
						fireDeviceEvent(DeviceEvent.READ_DATA);
					} 
				}
			} catch (Exception e) {
				log.warning("Error in processStr(): " + e.getLocalizedMessage());
			}
		}
	}
}
