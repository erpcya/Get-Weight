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
package org.erpca.model;

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Model for CUST_PortConfig_Role
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_CUST_PortConfig_Role extends PO implements I_CUST_PortConfig_Role, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130401L;

    /** Standard Constructor */
    public X_CUST_PortConfig_Role (Properties ctx, int CUST_PortConfig_Role_ID, String trxName)
    {
      super (ctx, CUST_PortConfig_Role_ID, trxName);
      /** if (CUST_PortConfig_Role_ID == 0)
        {
			setAD_Role_ID (0);
			setCUST_SerialPortConfig_ID (0);
        } */
    }

    /** Load Constructor */
    public X_CUST_PortConfig_Role (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_CUST_PortConfig_Role[")
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

	public org.erpca.model.I_CUST_SerialPortConfig getCUST_SerialPortConfig() throws RuntimeException
    {
		return (org.erpca.model.I_CUST_SerialPortConfig)MTable.get(getCtx(), org.erpca.model.I_CUST_SerialPortConfig.Table_Name)
			.getPO(getCUST_SerialPortConfig_ID(), get_TrxName());	}

	/** Set Serial Port Configuration.
		@param CUST_SerialPortConfig_ID 
		Serial Port Configuration example: COM1 or tty01, 9600...
	  */
	public void setCUST_SerialPortConfig_ID (int CUST_SerialPortConfig_ID)
	{
		if (CUST_SerialPortConfig_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_CUST_SerialPortConfig_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_CUST_SerialPortConfig_ID, Integer.valueOf(CUST_SerialPortConfig_ID));
	}

	/** Get Serial Port Configuration.
		@return Serial Port Configuration example: COM1 or tty01, 9600...
	  */
	public int getCUST_SerialPortConfig_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_CUST_SerialPortConfig_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

    /** Get Record ID/ColumnName
        @return ID/ColumnName pair
      */
    public KeyNamePair getKeyNamePair() 
    {
        return new KeyNamePair(get_ID(), String.valueOf(getCUST_SerialPortConfig_ID()));
    }
}