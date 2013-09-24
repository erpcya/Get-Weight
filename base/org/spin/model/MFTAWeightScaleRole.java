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
package org.spin.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;

/**
 * @author Yamel Senih
 *
 */
public class MFTAWeightScaleRole extends X_FTA_WeightScale_Role implements
		I_FTA_WeightScale_Role {

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
	public MFTAWeightScaleRole(Properties ctx, int CUST_PortConfig_User_ID,
			String trxName) {
		super(ctx, CUST_PortConfig_User_ID, trxName);
	}

	/**
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 25/03/2013, 18:52:15
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAWeightScaleRole(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	
	/**
	 * Get Serial Weight Scale from Role
	 * @author Yamel Senih 26/03/2013, 01:34:37
	 * @param ctx
	 * @param p_AD_Role_ID
	 * @param trxName
	 * @return
	 * @return List<MFTAWeightScale>
	 */
	public static List<MFTAWeightScale> getWeightScaleOfRole(Properties ctx, int p_AD_Role_ID, String trxName){
		List<MFTAWeightScale> list = new Query(ctx, I_FTA_WeightScale.Table_Name, 
				"EXISTS(SELECT 1 " +
				"			FROM " + Table_Name + " wsr " +
				"		WHERE wsr.FTA_WeightScale_ID = FTA_WeightScale.FTA_WeightScale_ID " +
				"		AND wsr.IsActive = 'Y' " +
				"		AND wsr.AD_Role_ID=?)"
				, trxName)
			.setOnlyActiveRecords(true)
			.setParameters(p_AD_Role_ID)
			.<MFTAWeightScale>list();
		//	
		return list;
	}
	
}
