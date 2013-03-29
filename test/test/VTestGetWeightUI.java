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
package test;

import org.compiere.apps.ADialog;
import org.compiere.model.GridTab;
import org.compiere.model.MOrderLine;
import org.compiere.util.Env;
import org.erpca.grid.VGetWeightUI;

/**
 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a>
 *
 */
public class VTestGetWeightUI extends VGetWeightUI {

	/**
	 * *** Constructor ***
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 14:54:39
	 * @param gridTab
	 */
	public VTestGetWeightUI(GridTab gridTab) {
		super(gridTab);
	}

	@Override
	public boolean processValue(String trxName) {
		int m_C_OrderLine_ID = getGridTab().getRecord_ID();
		MOrderLine oLine = new MOrderLine(Env.getCtx(), m_C_OrderLine_ID, trxName);
		oLine.setQty(weight);
		oLine.save();
		ADialog.info(p_WindowNo, dialog, "Weight", weight.toString());
		return false;
	}	
}
