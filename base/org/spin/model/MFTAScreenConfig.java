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

import org.adempiere.exceptions.AdempiereException;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class MFTAScreenConfig extends X_FTA_ScreenConfig {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5707431035069632469L;

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/09/2013, 17:47:19
	 * @param ctx
	 * @param FTA_ScreenConfig_ID
	 * @param trxName
	 */
	public MFTAScreenConfig(Properties ctx, int FTA_ScreenConfig_ID,
			String trxName) {
		super(ctx, FTA_ScreenConfig_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 23/09/2013, 17:47:19
	 * @param ctx
	 * @param rs
	 * @param trxName
	 */
	public MFTAScreenConfig(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	@Override
	public boolean beforeSave(boolean isNew){
		if(getPosStartCut() > getPosEndCut())
			throw new AdempiereException("@PosStartCutOverPosEndCut@");
		if(getPosStart_SCut() > getPosEnd_SCut())
			throw new AdempiereException("@PosStart_SCutOverPosEnd_SCut@");
		if(getStrLength() <= 0)
			throw new AdempiereException("@StrLengthUnderZero@");
		return true;
	}
	
	public String toString(){
		return    "ID=" + get_ID()
				+ "\nName=" + getName()
				+ "\nStart Character=" + getStartCharacter()
				+ "\nEnd Charater=" + getEndCharacter()
				+ "\nPosition Start Cut=" + getPosStartCut()
				+ "\nPosition End Cut=" + getPosEndCut()
				+ "\nPosition Start Cut Screen=" + getPosEnd_SCut()
				+ "\nPosition End Cut=" + getPosEnd_SCut();
	}

}
