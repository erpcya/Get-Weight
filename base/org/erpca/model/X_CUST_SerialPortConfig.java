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

/** Generated Model for CUST_SerialPortConfig
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_CUST_SerialPortConfig extends PO implements I_CUST_SerialPortConfig, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130420L;

    /** Standard Constructor */
    public X_CUST_SerialPortConfig (Properties ctx, int CUST_SerialPortConfig_ID, String trxName)
    {
      super (ctx, CUST_SerialPortConfig_ID, trxName);
      /** if (CUST_SerialPortConfig_ID == 0)
        {
			setBauds (null);
// 9600
			setCUST_SerialPortConfig_ID (0);
			setDataBits (null);
// 8
			setEndCharacter (0);
			setFlowControl (null);
// 1
			setName (null);
			setParity (null);
// 0
			setPosEndCut (0);
			setPosEnd_SCut (0);
			setPosStartCut (0);
			setPosStart_SCut (0);
			setSerialPort (null);
			setStartCharacter (0);
			setStopBits (null);
// 1
			setStrLength (0);
        } */
    }

    /** Load Constructor */
    public X_CUST_SerialPortConfig (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_CUST_SerialPortConfig[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Bauds AD_Reference_ID=53482 */
	public static final int BAUDS_AD_Reference_ID=53482;
	/** 110 = 110 */
	public static final String BAUDS_110 = "110";
	/** 115200 = 115200 */
	public static final String BAUDS_115200 = "115200";
	/** 1200 = 1200 */
	public static final String BAUDS_1200 = "1200";
	/** 19200 = 19200 */
	public static final String BAUDS_19200 = "19200";
	/** 2400 = 2400 */
	public static final String BAUDS_2400 = "2400";
	/** 300 = 300 */
	public static final String BAUDS_300 = "300";
	/** 38400 = 38400 */
	public static final String BAUDS_38400 = "38400";
	/** 4800 = 4800 */
	public static final String BAUDS_4800 = "4800";
	/** 57600 = 57600 */
	public static final String BAUDS_57600 = "57600";
	/** 75 = 75 */
	public static final String BAUDS_75 = "75";
	/** 9600 = 9600 */
	public static final String BAUDS_9600 = "9600";
	/** Set Bauds.
		@param Bauds Bauds	  */
	public void setBauds (String Bauds)
	{

		set_Value (COLUMNNAME_Bauds, Bauds);
	}

	/** Get Bauds.
		@return Bauds	  */
	public String getBauds () 
	{
		return (String)get_Value(COLUMNNAME_Bauds);
	}

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

	/** DataBits AD_Reference_ID=53483 */
	public static final int DATABITS_AD_Reference_ID=53483;
	/** 5 = 5 */
	public static final String DATABITS_5 = "5";
	/** 6 = 6 */
	public static final String DATABITS_6 = "6";
	/** 7 = 7 */
	public static final String DATABITS_7 = "7";
	/** 8 = 8 */
	public static final String DATABITS_8 = "8";
	/** Set Data Bits.
		@param DataBits Data Bits	  */
	public void setDataBits (String DataBits)
	{

		set_Value (COLUMNNAME_DataBits, DataBits);
	}

	/** Get Data Bits.
		@return Data Bits	  */
	public String getDataBits () 
	{
		return (String)get_Value(COLUMNNAME_DataBits);
	}

	/** Set End Character.
		@param EndCharacter 
		End Character example: ASCII (28)
	  */
	public void setEndCharacter (int EndCharacter)
	{
		set_Value (COLUMNNAME_EndCharacter, Integer.valueOf(EndCharacter));
	}

	/** Get End Character.
		@return End Character example: ASCII (28)
	  */
	public int getEndCharacter () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_EndCharacter);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** FlowControl AD_Reference_ID=53484 */
	public static final int FLOWCONTROL_AD_Reference_ID=53484;
	/** None = 0 */
	public static final String FLOWCONTROL_None = "0";
	/** RTSCTS IN = 1 */
	public static final String FLOWCONTROL_RTSCTSIN = "1";
	/** RTSCTS OUT = 2 */
	public static final String FLOWCONTROL_RTSCTSOUT = "2";
	/** XON/XOFF IN = 4 */
	public static final String FLOWCONTROL_XONXOFFIN = "4";
	/** XON/XOFF OUT = 8 */
	public static final String FLOWCONTROL_XONXOFFOUT = "8";
	/** Set Flow Control.
		@param FlowControl Flow Control	  */
	public void setFlowControl (String FlowControl)
	{

		set_Value (COLUMNNAME_FlowControl, FlowControl);
	}

	/** Get Flow Control.
		@return Flow Control	  */
	public String getFlowControl () 
	{
		return (String)get_Value(COLUMNNAME_FlowControl);
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

	/** Parity AD_Reference_ID=53485 */
	public static final int PARITY_AD_Reference_ID=53485;
	/** None = 0 */
	public static final String PARITY_None = "0";
	/** Odd = 1 */
	public static final String PARITY_Odd = "1";
	/** Even = 2 */
	public static final String PARITY_Even = "2";
	/** Mark = 3 */
	public static final String PARITY_Mark = "3";
	/** Space = 4 */
	public static final String PARITY_Space = "4";
	/** Set Parity.
		@param Parity Parity	  */
	public void setParity (String Parity)
	{

		set_Value (COLUMNNAME_Parity, Parity);
	}

	/** Get Parity.
		@return Parity	  */
	public String getParity () 
	{
		return (String)get_Value(COLUMNNAME_Parity);
	}

	/** Set Position End (Cut).
		@param PosEndCut Position End (Cut)	  */
	public void setPosEndCut (int PosEndCut)
	{
		set_Value (COLUMNNAME_PosEndCut, Integer.valueOf(PosEndCut));
	}

	/** Get Position End (Cut).
		@return Position End (Cut)	  */
	public int getPosEndCut () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_PosEndCut);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Position End (Screen cut).
		@param PosEnd_SCut Position End (Screen cut)	  */
	public void setPosEnd_SCut (int PosEnd_SCut)
	{
		set_Value (COLUMNNAME_PosEnd_SCut, Integer.valueOf(PosEnd_SCut));
	}

	/** Get Position End (Screen cut).
		@return Position End (Screen cut)	  */
	public int getPosEnd_SCut () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_PosEnd_SCut);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Position Start (Cut).
		@param PosStartCut Position Start (Cut)	  */
	public void setPosStartCut (int PosStartCut)
	{
		set_Value (COLUMNNAME_PosStartCut, Integer.valueOf(PosStartCut));
	}

	/** Get Position Start (Cut).
		@return Position Start (Cut)	  */
	public int getPosStartCut () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_PosStartCut);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Position Start (Screen cut).
		@param PosStart_SCut Position Start (Screen cut)	  */
	public void setPosStart_SCut (int PosStart_SCut)
	{
		set_Value (COLUMNNAME_PosStart_SCut, Integer.valueOf(PosStart_SCut));
	}

	/** Get Position Start (Screen cut).
		@return Position Start (Screen cut)	  */
	public int getPosStart_SCut () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_PosStart_SCut);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Serial Port.
		@param SerialPort Serial Port	  */
	public void setSerialPort (String SerialPort)
	{
		set_Value (COLUMNNAME_SerialPort, SerialPort);
	}

	/** Get Serial Port.
		@return Serial Port	  */
	public String getSerialPort () 
	{
		return (String)get_Value(COLUMNNAME_SerialPort);
	}

	/** Set Start Character.
		@param StartCharacter 
		Start Character example: ASCII (3)
	  */
	public void setStartCharacter (int StartCharacter)
	{
		set_Value (COLUMNNAME_StartCharacter, Integer.valueOf(StartCharacter));
	}

	/** Get Start Character.
		@return Start Character example: ASCII (3)
	  */
	public int getStartCharacter () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_StartCharacter);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** StopBits AD_Reference_ID=53486 */
	public static final int STOPBITS_AD_Reference_ID=53486;
	/** 1 = 1 */
	public static final String STOPBITS_1 = "1";
	/** 2 = 2 */
	public static final String STOPBITS_2 = "2";
	/** 1.5 = 3 */
	public static final String STOPBITS_15 = "3";
	/** Set Stop Bits.
		@param StopBits Stop Bits	  */
	public void setStopBits (String StopBits)
	{

		set_Value (COLUMNNAME_StopBits, StopBits);
	}

	/** Get Stop Bits.
		@return Stop Bits	  */
	public String getStopBits () 
	{
		return (String)get_Value(COLUMNNAME_StopBits);
	}

	/** Set String Length.
		@param StrLength String Length	  */
	public void setStrLength (int StrLength)
	{
		set_Value (COLUMNNAME_StrLength, Integer.valueOf(StrLength));
	}

	/** Get String Length.
		@return String Length	  */
	public int getStrLength () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_StrLength);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}