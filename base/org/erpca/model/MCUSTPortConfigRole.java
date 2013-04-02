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
import java.util.Properties;

/**
 * @author Yamel Senih
 *
 */
public class MCUSTPortConfigRole extends X_CUST_PortConfig_Role implements
		I_CUST_PortConfig_Role {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2555015931310138334L;

	/**
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 25/03/2013, 18:52:15
	 * @param ctx
	 * @param CUST_PortConfig_User_ID
	 * @param trxName
	 */
	public MCUSTPortConfigRole(Properties ctx, int CUST_PortConfig_User_ID,
			String trxName) {
		super(ctx, CUST_PortConfig_User_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 25/03/2013, 18:52:15
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MCUSTPortConfigRole(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

}
