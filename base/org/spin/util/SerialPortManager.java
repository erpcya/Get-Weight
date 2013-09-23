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

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.TooManyListenersException;

import javax.comm.CommPortIdentifier;
import javax.comm.NoSuchPortException;
import javax.comm.PortInUseException;
import javax.comm.SerialPort;
import javax.comm.SerialPortEventListener;
import javax.comm.UnsupportedCommOperationException;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.Adempiere;
import org.compiere.util.CLogger;
import org.spin.model.MFTASerialPortConfig;

/**
 * @author Yamel Senih
 *
 */
public class SerialPortManager {
	
	/**
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 28/03/2013, 02:40:50
	 */
	public SerialPortManager(MFTASerialPortConfig s_portConfig) {
		this.s_portConfig = s_portConfig;
	}

	/**	Serial Port Config					*/
	private MFTASerialPortConfig 	s_portConfig = null;
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
	
	
	/**
	 * Search and Open the Serial Port
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:17:37
	 * @return
	 * @throws PortInUseException
	 * @throws UnsupportedCommOperationException
	 * @throws Exception
	 * @return SerialPort
	 * @throws IOException 
	 */
	public SerialPort openPortSearch() throws PortInUseException, UnsupportedCommOperationException, AdempiereException, IOException {
		portList = CommPortIdentifier.getPortIdentifiers();
		while (portList.hasMoreElements()) {
			PortID = (CommPortIdentifier) portList.nextElement();
			if(PortID.getPortType() == CommPortIdentifier.PORT_SERIAL){
				if(PortID.getName().equals(s_portConfig.getSerialPort())){
					log.info("Located " + s_portConfig.getSerialPort());
					log.info("Opening " + s_portConfig.getSerialPort());
					serialPort = (SerialPort) PortID.open(Adempiere.NAME + "...", 2000);
					log.info("Parameterizing Port...");
					serialPort.setSerialPortParams(s_portConfig.getBaudsAsInt(),
							s_portConfig.getDataBitsAsInt(),
							s_portConfig.getStopBitsAsInt(),
							s_portConfig.getParityAsInt());
					log.info("Port Ready ...");
					i_Stream = serialPort.getInputStream();
					o_Stream = serialPort.getOutputStream();
					return serialPort;
				}
			}
		}
		throw new AdempiereException(s_portConfig.getSerialPort() + " Not Found ");
	}
	
	/**
	 * Open Port
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:22:42
	 * @return
	 * @throws NoSuchPortException
	 * @throws PortInUseException
	 * @throws UnsupportedCommOperationException
	 * @throws IOException
	 * @return SerialPort
	 */
	public SerialPort openPort() throws NoSuchPortException, PortInUseException, UnsupportedCommOperationException, IOException{
		PortID = CommPortIdentifier.getPortIdentifier(s_portConfig.getSerialPort());
		log.info("Opening " + s_portConfig.getSerialPort() + " ...");
		serialPort = (SerialPort) PortID.open(Adempiere.NAME + "...", 2000);
		log.info("Parameterizing Port...");
		serialPort.setSerialPortParams(s_portConfig.getBaudsAsInt(),
				s_portConfig.getDataBitsAsInt(),
				s_portConfig.getStopBitsAsInt(),
				s_portConfig.getParityAsInt());
		log.info("Port Ready ...");
		i_Stream = serialPort.getInputStream();
		o_Stream = serialPort.getOutputStream();
		return serialPort;
	}
	
	
	/**
	 * Close the Serial Port
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 03:12:18
	 * @throws IOException
	 * @return void
	 */
	public void closePort() throws IOException{
		if(serialPort != null){
			i_Stream.close();
			o_Stream.close();
			serialPort.close();
			log.info("Closed " + s_portConfig.getSerialPort());
		}
	}
	
}
