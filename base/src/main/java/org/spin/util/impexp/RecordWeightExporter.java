/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 or later of the                                  *
 * GNU General Public License as published                                    *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * Copyright (C) 2003-2015 E.R.P. Consultores y Asociados, C.A.               *
 * All Rights Reserved.                                                       *
 * Contributor(s): Yamel Senih www.erpya.com                                  *
 *****************************************************************************/
package org.spin.util.impexp;

import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.xml.transform.sax.TransformerHandler;

import org.adempiere.pipo.PackOut;
import org.adempiere.pipo.handler.GenericPOHandler;
import org.compiere.model.I_AD_Column;
import org.compiere.model.I_AD_Element;
import org.compiere.model.I_AD_Field;
import org.compiere.model.I_AD_Tab;
import org.compiere.model.I_AD_Table;
import org.compiere.model.I_AD_Window;
import org.compiere.model.Query;
import org.spin.model.I_AD_DeviceAttributeUse;
import org.spin.model.I_AD_DeviceAttributeValue;
import org.spin.model.I_AD_DeviceType;
import org.spin.model.I_AD_DeviceTypeSetUse;
import org.spin.model.MADDeviceAttribute;
import org.spin.model.MADDeviceAttributeSet;
import org.spin.model.MADDeviceAttributeUse;
import org.spin.model.MADDeviceAttributeValue;
import org.spin.model.MADDeviceType;
import org.spin.model.MADDeviceTypeSetUse;
import org.xml.sax.SAXException;

/**
 * Export device for record weight
 * @author Yamel Senih, ysenih@erpya.com, ERPCyA http://www.erpya.com
 *
 */
public class RecordWeightExporter extends GenericPOHandler {
	public void create(Properties ctx, TransformerHandler document) throws SAXException {
		PackOut packOut = (PackOut) ctx.get("PackOutProcess");
		if(packOut == null ) {
			packOut = new PackOut();
			packOut.setLocalContext(ctx);
		}
		List<MADDeviceType> deviceTypeList = new Query(ctx, I_AD_DeviceType.Table_Name, I_AD_DeviceType.COLUMNNAME_DeviceType + "=?", getTrxName(ctx))
			.setOnlyActiveRecords(true)
			.setParameters(MADDeviceType.DEVICETYPE_WeightScale)
			.setClient_ID()
			.list();
		for(MADDeviceType deviceType : deviceTypeList) {
			//	Exclude tables
			List<String> tablesToExclude = new ArrayList<String>();
			tablesToExclude.add(I_AD_Element.Table_Name);
			tablesToExclude.add(I_AD_Column.Table_Name);
			tablesToExclude.add(I_AD_Table.Table_Name);
			tablesToExclude.add(I_AD_Window.Table_Name);
			tablesToExclude.add(I_AD_Tab.Table_Name);
			tablesToExclude.add(I_AD_Field.Table_Name);
			//	Get Set Attributes
			List<MADDeviceTypeSetUse> deviceTypeAttributeSetUseList = new Query(ctx, I_AD_DeviceTypeSetUse.Table_Name, I_AD_DeviceTypeSetUse.COLUMNNAME_AD_DeviceType_ID + " = ?", null)
				.setParameters(deviceType.getAD_DeviceType_ID())
				.list();
			for(MADDeviceTypeSetUse deviceTypeAttributeSetUse : deviceTypeAttributeSetUseList) {
				//	Attribute set
				MADDeviceAttributeSet attributeSet = new MADDeviceAttributeSet(ctx, deviceTypeAttributeSetUse.getAD_DeviceAttributeSet_ID(), null);
				packOut.createGenericPO(document, attributeSet, true, tablesToExclude);
				//	Get List from Attribute Set
				List<MADDeviceAttributeUse> deviceAttributeUseList = new Query(ctx, I_AD_DeviceAttributeUse.Table_Name, I_AD_DeviceAttributeUse.COLUMNNAME_AD_DeviceAttributeSet_ID + " = ?", null)
						.setParameters(attributeSet.getAD_DeviceAttributeSet_ID())
						.list();
				for(MADDeviceAttributeUse deviceAttributeUse : deviceAttributeUseList) {
					MADDeviceAttribute attribute = new MADDeviceAttribute(ctx, deviceAttributeUse.getAD_DeviceAttribute_ID(), null);
					packOut.createGenericPO(document, attribute, true, tablesToExclude);
					//	Get Values
					List<MADDeviceAttributeValue> deviceAttributeValueList = new Query(ctx, I_AD_DeviceAttributeValue.Table_Name, I_AD_DeviceAttributeValue.COLUMNNAME_AD_DeviceAttribute_ID + " = ?", null)
							.setParameters(attribute.getAD_DeviceAttribute_ID())
							.list();
					for(MADDeviceAttributeValue deviceAttributeValue : deviceAttributeValueList) {
						packOut.createGenericPO(document, deviceAttributeValue, true, tablesToExclude);
					}
					packOut.createGenericPO(document, deviceAttributeUse, true, tablesToExclude);
				}
				//	
				packOut.createGenericPO(document, deviceTypeAttributeSetUse, true, tablesToExclude);
			}
		}
	}
}