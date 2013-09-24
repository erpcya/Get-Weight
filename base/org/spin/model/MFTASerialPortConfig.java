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
package org.spin.model;

import java.sql.ResultSet;
import java.util.Properties;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTASerialPortConfig extends X_FTA_SerialPortConfig implements
		I_FTA_SerialPortConfig {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -5266524039075816371L;

	/**
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 25/03/2013, 18:51:03
	 * @param ctx
	 * @param CUST_SerialPortConfig_ID
	 * @param trxName
	 */
	public MFTASerialPortConfig(Properties ctx, int CUST_SerialPortConfig_ID,
			String trxName) {
		super(ctx, CUST_SerialPortConfig_ID, trxName);
	}

	/**
	 * *** Constructor de la Clase ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 25/03/2013, 18:51:03
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTASerialPortConfig(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Get Speed as Integer
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 02:43:37
	 * @return
	 * @return int
	 */
	public int getBaudsAsInt(){
		return Integer.parseInt(getBauds());
	}
	
	/**
	 * Get Data Bits as Integer
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 02:45:43
	 * @return
	 * @return int
	 */
	public int getDataBitsAsInt(){
		return Integer.parseInt(getDataBits());
	}
	
	/**
	 * Get Stop Bits as Integer
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 02:45:59
	 * @return
	 * @return int
	 */
	public int getStopBitsAsInt(){
		return Integer.parseInt(getStopBits());
	}
	
	/**
	 * Get Parity as Integer
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 28/03/2013, 02:49:56
	 * @return
	 * @return int
	 */
	public int getParityAsInt(){
		return Integer.parseInt(getParity());
	}
	
	public String toString(){
		return    "ID=" + get_ID()
				+ "\nName=" + getName()
				+ "\nSeria lPort=" + getSerialPort()
				+ "\nBauds=" + getBauds()
				+ "\nParity=" + getParity()
				+ "\nData Bits=" + getDataBits()
				+ "\nStop Bits=" + getStopBits()
				+ "\nFlow Control=" + getFlowControl();
	}
	
}
