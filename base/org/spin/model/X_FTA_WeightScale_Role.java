/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.spin.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Model for FTA_WeightScale_Role
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_FTA_WeightScale_Role extends PO implements I_FTA_WeightScale_Role, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130923L;

    /** Standard Constructor */
    public X_FTA_WeightScale_Role (Properties ctx, int FTA_WeightScale_Role_ID, String trxName)
    {
      super (ctx, FTA_WeightScale_Role_ID, trxName);
      /** if (FTA_WeightScale_Role_ID == 0)
        {
			setAD_Role_ID (0);
			setFTA_WeightScale_ID (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_WeightScale_Role (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_FTA_WeightScale_Role[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_AD_Role getAD_Role() throws RuntimeException
    {
		return (org.compiere.model.I_AD_Role)MTable.get(getCtx(), org.compiere.model.I_AD_Role.Table_Name)
			.getPO(getAD_Role_ID(), get_TrxName());	}

	/** Set Role.
		@param AD_Role_ID 
		Responsibility Role
	  */
	public void setAD_Role_ID (int AD_Role_ID)
	{
		if (AD_Role_ID < 0) 
			set_ValueNoCheck (COLUMNNAME_AD_Role_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_AD_Role_ID, Integer.valueOf(AD_Role_ID));
	}

	/** Get Role.
		@return Responsibility Role
	  */
	public int getAD_Role_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_Role_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_WeightScale getFTA_WeightScale() throws RuntimeException
    {
		return (org.spin.model.I_FTA_WeightScale)MTable.get(getCtx(), org.spin.model.I_FTA_WeightScale.Table_Name)
			.getPO(getFTA_WeightScale_ID(), get_TrxName());	}

	/** Set Weight Scale.
		@param FTA_WeightScale_ID Weight Scale	  */
	public void setFTA_WeightScale_ID (int FTA_WeightScale_ID)
	{
		if (FTA_WeightScale_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_WeightScale_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_WeightScale_ID, Integer.valueOf(FTA_WeightScale_ID));
	}

	/** Get Weight Scale.
		@return Weight Scale	  */
	public int getFTA_WeightScale_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_WeightScale_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getFTA_WeightScale_ID()));
    }
}