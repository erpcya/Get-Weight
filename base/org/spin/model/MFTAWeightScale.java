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
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.DB;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTAWeightScale extends X_FTA_WeightScale {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -816990631162156923L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/09/2013, 17:46:12
	 * @param ctx
	 * @param FTA_WeightScale_ID
	 * @param trxName
	 */
	public MFTAWeightScale(Properties ctx, int FTA_WeightScale_ID,
			String trxName) {
		super(ctx, FTA_WeightScale_ID, trxName);
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/09/2013, 17:46:12
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAWeightScale(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * Get Serial Port Configuration
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/09/2013, 10:54:37
	 * @return
	 * @return MFTASerialPortConfig
	 */
	public MFTASerialPortConfig getSerialPortConfig(){
		return (MFTASerialPortConfig) getFTA_SerialPortConfig();
	}
	
	/**
	 * Get Screen Configuration
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 24/09/2013, 11:04:41
	 * @return
	 * @return MFTAScreenConfig
	 */
	public MFTAScreenConfig getScreenConfig(){
		return (MFTAScreenConfig) getFTA_ScreenConfig();
	}
	
	/**
	 * Get Weight Scale from Organization
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/12/2014, 11:14:09
	 * @param ctx
	 * @param p_AD_Org_ID
	 * @param trxName
	 * @return
	 * @return List<MFTAWeightScale>
	 */
	public static List<MFTAWeightScale> getWeightScaleOfOrg(Properties ctx, int p_AD_Org_ID, String trxName) {
		List<MFTAWeightScale> list = new Query(ctx, I_FTA_WeightScale.Table_Name, "AD_Org_ID = ?", trxName)
			.setOnlyActiveRecords(true)
			.setParameters(p_AD_Org_ID)
			.<MFTAWeightScale>list();
		//	
		return list;
	}
	
	/**
	 * Verify if the Organization have a weight scale
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 11/12/2014, 11:16:48
	 * @param p_AD_Org_ID
	 * @param trxName
	 * @return
	 * @return boolean
	 */
	public static boolean isWeightScaleOrg(int p_AD_Org_ID, String trxName) {
		int m_FTA_WeightScale_ID = DB.getSQLValue(trxName, 
				"SELECT FTA_WeightScale_ID FROM FTA_WeightScale WHERE AD_Org_ID = ?", 
				p_AD_Org_ID);
		//	Verify
		return (m_FTA_WeightScale_ID > 0);
	}

}
