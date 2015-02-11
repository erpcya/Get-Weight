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

/** Generated Model for FTA_WS_Warehouse
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765) - $Id$ */
public class X_FTA_WS_Warehouse extends PO implements I_FTA_WS_Warehouse, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150210L;

    /** Standard Constructor */
    public X_FTA_WS_Warehouse (Properties ctx, int FTA_WS_Warehouse_ID, String trxName)
    {
      super (ctx, FTA_WS_Warehouse_ID, trxName);
      /** if (FTA_WS_Warehouse_ID == 0)
        {
			setFTA_WeightScale_ID (0);
			setM_Warehouse_ID (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_WS_Warehouse (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_WS_Warehouse[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	public org.compiere.model.I_M_Warehouse getM_Warehouse() throws RuntimeException
    {
		return (org.compiere.model.I_M_Warehouse)MTable.get(getCtx(), org.compiere.model.I_M_Warehouse.Table_Name)
			.getPO(getM_Warehouse_ID(), get_TrxName());	}

	/** Set Warehouse.
		@param M_Warehouse_ID 
		Storage Warehouse and Service Point
	  */
	public void setM_Warehouse_ID (int M_Warehouse_ID)
	{
		if (M_Warehouse_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_M_Warehouse_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_M_Warehouse_ID, Integer.valueOf(M_Warehouse_ID));
	}

	/** Get Warehouse.
		@return Storage Warehouse and Service Point
	  */
	public int getM_Warehouse_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_M_Warehouse_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}