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
package org.erpca.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for CUST_SerialPortConfig
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS
 */
public interface I_CUST_SerialPortConfig 
{

    /** TableName=CUST_SerialPortConfig */
    public static final String Table_Name = "CUST_SerialPortConfig";

    /** AD_Table_ID=53457 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name Bauds */
    public static final String COLUMNNAME_Bauds = "Bauds";

	/** Set Bauds	  */
	public void setBauds (String Bauds);

	/** Get Bauds	  */
	public String getBauds();

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name CUST_SerialPortConfig_ID */
    public static final String COLUMNNAME_CUST_SerialPortConfig_ID = "CUST_SerialPortConfig_ID";

	/** Set Serial Port Configuration.
	  * Serial Port Configuration example: COM1 or tty01, 9600...
	  */
	public void setCUST_SerialPortConfig_ID (int CUST_SerialPortConfig_ID);

	/** Get Serial Port Configuration.
	  * Serial Port Configuration example: COM1 or tty01, 9600...
	  */
	public int getCUST_SerialPortConfig_ID();

    /** Column name DataBits */
    public static final String COLUMNNAME_DataBits = "DataBits";

	/** Set Data Bits	  */
	public void setDataBits (String DataBits);

	/** Get Data Bits	  */
	public String getDataBits();

    /** Column name EndCharacter */
    public static final String COLUMNNAME_EndCharacter = "EndCharacter";

	/** Set End Character.
	  * End Character example: ASCII (28)
	  */
	public void setEndCharacter (int EndCharacter);

	/** Get End Character.
	  * End Character example: ASCII (28)
	  */
	public int getEndCharacter();

    /** Column name FlowControl */
    public static final String COLUMNNAME_FlowControl = "FlowControl";

	/** Set Flow Control	  */
	public void setFlowControl (String FlowControl);

	/** Get Flow Control	  */
	public String getFlowControl();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

    /** Column name Parity */
    public static final String COLUMNNAME_Parity = "Parity";

	/** Set Parity	  */
	public void setParity (String Parity);

	/** Get Parity	  */
	public String getParity();

    /** Column name PosEndCut */
    public static final String COLUMNNAME_PosEndCut = "PosEndCut";

	/** Set Position End (Cut)	  */
	public void setPosEndCut (int PosEndCut);

	/** Get Position End (Cut)	  */
	public int getPosEndCut();

    /** Column name PosEnd_SCut */
    public static final String COLUMNNAME_PosEnd_SCut = "PosEnd_SCut";

	/** Set Position End (Screen cut)	  */
	public void setPosEnd_SCut (int PosEnd_SCut);

	/** Get Position End (Screen cut)	  */
	public int getPosEnd_SCut();

    /** Column name PosStartCut */
    public static final String COLUMNNAME_PosStartCut = "PosStartCut";

	/** Set Position Start (Cut)	  */
	public void setPosStartCut (int PosStartCut);

	/** Get Position Start (Cut)	  */
	public int getPosStartCut();

    /** Column name PosStart_SCut */
    public static final String COLUMNNAME_PosStart_SCut = "PosStart_SCut";

	/** Set Position Start (Screen cut)	  */
	public void setPosStart_SCut (int PosStart_SCut);

	/** Get Position Start (Screen cut)	  */
	public int getPosStart_SCut();

    /** Column name SerialPort */
    public static final String COLUMNNAME_SerialPort = "SerialPort";

	/** Set Serial Port	  */
	public void setSerialPort (String SerialPort);

	/** Get Serial Port	  */
	public String getSerialPort();

    /** Column name StartCharacter */
    public static final String COLUMNNAME_StartCharacter = "StartCharacter";

	/** Set Start Character.
	  * Start Character example: ASCII (3)
	  */
	public void setStartCharacter (int StartCharacter);

	/** Get Start Character.
	  * Start Character example: ASCII (3)
	  */
	public int getStartCharacter();

    /** Column name StopBits */
    public static final String COLUMNNAME_StopBits = "StopBits";

	/** Set Stop Bits	  */
	public void setStopBits (String StopBits);

	/** Get Stop Bits	  */
	public String getStopBits();

    /** Column name StrLength */
    public static final String COLUMNNAME_StrLength = "StrLength";

	/** Set String Length	  */
	public void setStrLength (int StrLength);

	/** Get String Length	  */
	public int getStrLength();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();
}
