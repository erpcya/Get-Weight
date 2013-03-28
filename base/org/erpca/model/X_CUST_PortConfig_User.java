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

/** Generated Model for CUST_PortConfig_User
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_CUST_PortConfig_User extends PO implements I_CUST_PortConfig_User, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130328L;

    /** Standard Constructor */
    public X_CUST_PortConfig_User (Properties ctx, int CUST_PortConfig_User_ID, String trxName)
    {
      super (ctx, CUST_PortConfig_User_ID, trxName);
      /** if (CUST_PortConfig_User_ID == 0)
        {
			setAD_User_ID (0);
			setCUST_SerialPortConfig_ID (0);
        } */
    }

    /** Load Constructor */
    public X_CUST_PortConfig_User (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_CUST_PortConfig_User[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public org.compiere.model.I_AD_User getAD_User() throws RuntimeException
    {
		return (org.compiere.model.I_AD_User)MTable.get(getCtx(), org.compiere.model.I_AD_User.Table_Name)
			.getPO(getAD_User_ID(), get_TrxName());	}

	/** Set Usuario.
		@param AD_User_ID 
		User within the system - Internal or Business Partner Contact
	  */
	public void setAD_User_ID (int AD_User_ID)
	{
		if (AD_User_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_AD_User_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_AD_User_ID, Integer.valueOf(AD_User_ID));
	}

	/** Get Usuario.
		@return User within the system - Internal or Business Partner Contact
	  */
	public int getAD_User_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_AD_User_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public I_CUST_SerialPortConfig getCUST_SerialPortConfig() throws RuntimeException
    {
		return (I_CUST_SerialPortConfig)MTable.get(getCtx(), I_CUST_SerialPortConfig.Table_Name)
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