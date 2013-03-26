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
package org.erpca.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MInvoice;
import org.compiere.model.Query;

/**
 * @author Yamel Senih
 *
 */
public class MCUSTSerialPortConfig extends X_CUST_SerialPortConfig implements
		I_CUST_SerialPortConfig {
	
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
	public MCUSTSerialPortConfig(Properties ctx, int CUST_SerialPortConfig_ID,
			String trxName) {
		super(ctx, CUST_SerialPortConfig_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 25/03/2013, 18:51:03
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MCUSTSerialPortConfig(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * Get Serial Port Configuration of User
	 * @author Yamel Senih 26/03/2013, 01:34:37
	 * @param ctx
	 * @param p_AD_User_ID
	 * @param trxName
	 * @return
	 * @return MCUSTSerialPortConfig[]
	 */
	public static MCUSTSerialPortConfig[] getSerialPortConfigOfUser(Properties ctx, int p_AD_User_ID, String trxName){
		List<MInvoice> list = new Query(ctx, Table_Name, I_CUST_PortConfig_User.COLUMNNAME_AD_User_ID+"=?", trxName)
			.setParameters(p_AD_User_ID)
			.list();
		return list.toArray(new MCUSTSerialPortConfig[list.size()]);
	}

}
