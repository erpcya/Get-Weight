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

/** Generated Model for FTA_ScreenConfig
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_FTA_ScreenConfig extends PO implements I_FTA_ScreenConfig, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130923L;

    /** Standard Constructor */
    public X_FTA_ScreenConfig (Properties ctx, int FTA_ScreenConfig_ID, String trxName)
    {
      super (ctx, FTA_ScreenConfig_ID, trxName);
      /** if (FTA_ScreenConfig_ID == 0)
        {
			setEndCharacter (0);
			setFTA_ScreenConfig_ID (0);
			setName (null);
			setPosEnd_SCut (0);
			setPosStartCut (0);
			setPosStart_SCut (0);
			setStartCharacter (0);
			setStrLength (0);
        } */
    }

    /** Load Constructor */
    public X_FTA_ScreenConfig (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_FTA_ScreenConfig[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	/** Set Screen Configuration.
		@param FTA_ScreenConfig_ID Screen Configuration	  */
	public void setFTA_ScreenConfig_ID (int FTA_ScreenConfig_ID)
	{
		if (FTA_ScreenConfig_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_FTA_ScreenConfig_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_FTA_ScreenConfig_ID, Integer.valueOf(FTA_ScreenConfig_ID));
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