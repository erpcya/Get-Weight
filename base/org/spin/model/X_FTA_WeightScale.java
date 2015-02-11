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

/** Generated Model for FTA_WeightScale
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS (1252452765) - $Id$ */
public class X_FTA_WeightScale extends PO implements I_FTA_WeightScale, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150210L;

    /** Standard Constructor */
    public X_FTA_WeightScale (Properties ctx, int FTA_WeightScale_ID, String trxName)
    {
      super (ctx, FTA_WeightScale_ID, trxName);
      /** if (FTA_WeightScale_ID == 0)
        {
			setC_UOM_ID (0);
// -1
			setFTA_ScreenConfig_ID (0);
			setFTA_SerialPortConfig_ID (0);
			setFTA_WeightScale_ID (0);
			setName (null);
        } */
    }

    /** Load Constructor */
    public X_FTA_WeightScale (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_WeightScale[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_C_UOM getC_UOM() throws RuntimeException
    {
		return (org.compiere.model.I_C_UOM)MTable.get(getCtx(), org.compiere.model.I_C_UOM.Table_Name)
			.getPO(getC_UOM_ID(), get_TrxName());	}

	/** Set UOM.
		@param C_UOM_ID 
		Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID)
	{
		if (C_UOM_ID < 1) 
			set_Value (COLUMNNAME_C_UOM_ID, null);
		else 
			set_Value (COLUMNNAME_C_UOM_ID, Integer.valueOf(C_UOM_ID));
	}

	/** Get UOM.
		@return Unit of Measure
	  */
	public int getC_UOM_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_UOM_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	public org.spin.model.I_FTA_ScreenConfig getFTA_ScreenConfig() throws RuntimeException
    {
		return (org.spin.model.I_FTA_ScreenConfig)MTable.get(getCtx(), org.spin.model.I_FTA_ScreenConfig.Table_Name)
			.getPO(getFTA_ScreenConfig_ID(), get_TrxName());	}

	/** Set Screen Configuration.
		@param FTA_ScreenConfig_ID Screen Configuration	  */
	public void setFTA_ScreenConfig_ID (int FTA_ScreenConfig_ID)
	{
		if (FTA_ScreenConfig_ID < 1) 
			set_Value (COLUMNNAME_FTA_ScreenConfig_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_ScreenConfig_ID, Integer.valueOf(FTA_ScreenConfig_ID));
	}

	/** Get Screen Configuration.
		@return Screen Configuration	  */
	public int getFTA_ScreenConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_ScreenConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.spin.model.I_FTA_SerialPortConfig getFTA_SerialPortConfig() throws RuntimeException
    {
		return (org.spin.model.I_FTA_SerialPortConfig)MTable.get(getCtx(), org.spin.model.I_FTA_SerialPortConfig.Table_Name)
			.getPO(getFTA_SerialPortConfig_ID(), get_TrxName());	}

	/** Set Serial Port Configuration.
		@param FTA_SerialPortConfig_ID 
		Serial Port Configuration example: COM1 or tty01, 9600...
	  */
	public void setFTA_SerialPortConfig_ID (int FTA_SerialPortConfig_ID)
	{
		if (FTA_SerialPortConfig_ID < 1) 
			set_Value (COLUMNNAME_FTA_SerialPortConfig_ID, null);
		else 
			set_Value (COLUMNNAME_FTA_SerialPortConfig_ID, Integer.valueOf(FTA_SerialPortConfig_ID));
	}

	/** Get Serial Port Configuration.
		@return Serial Port Configuration example: COM1 or tty01, 9600...
	  */
	public int getFTA_SerialPortConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_FTA_SerialPortConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

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

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), getName());
    }
}