/*************************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                              *
 * This program is free software; you can redistribute it and/or modify it           *
 * under the terms version 2 of the GNU General Public License as published          *
 * by the Free Software Foundation. This program is distributed in the hope          *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied        *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                  *
 * See the GNU General Public License for more details.                              *
 * You should have received a copy of the GNU General Public License along           *
 * with this program; if not, write to the Free Software Foundation, Inc.,           *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                            *
 * For the text or an alternative of this public license, you may reach us           *
 * Copyright (C) 2012-2013 E.R.P. Consultores y Asociados, S.A. All Rights Reserved. *
 * Contributor(s): Yamel Senih www.erpya.com                                         *
 *************************************************************************************/
package org.spin.app.form;

import java.awt.BorderLayout;
import java.awt.Cursor;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;

import javax.swing.BorderFactory;

import org.compiere.apps.ADialog;
import org.compiere.apps.AppsAction;
import org.compiere.apps.ConfirmPanel;
import org.compiere.apps.form.FormFrame;
import org.compiere.apps.form.FormPanel;
import org.compiere.model.MSysConfig;
import org.compiere.plaf.CompiereColor;
import org.compiere.swing.CButton;
import org.compiere.swing.CLabel;
import org.compiere.swing.CPanel;
import org.compiere.swing.CTextField;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.util.TrxRunnable;
import org.compiere.util.Util;
import org.spin.model.MADDevice;

/**
 * Get Weight dialog
 * @author Yamel Senih, ysenih@erpya.com, ERPCyA http://www.erpya.com
 */
public class VGetWeight extends GetWeight implements FormPanel, ActionListener {
	
	
	/**
	 *	Initialize Panel
	 *  @param windowNo window
	 *  @param frame frame
	 */
	public void init (int windowNo, FormFrame frame) {
		this.windowNo = windowNo;
		frame.setTitle(Msg.translate(Env.getCtx(), "GetWeightFromScale"));
		this.frame = frame;
		try {
			loadWeightScale();
			if (!dynInit()) {
				return;
			}
			//	
			boolean sys = MSysConfig.getBooleanValue("OPEN_PORT_AUTOMATIC_IN_GETWEIGHT", true, 
					Env.getAD_Client_ID(Env.getCtx()));
			if(sys) {
				startService();
			}
		} catch (Exception e) {
			if(Util.isEmpty(getMessage())) {
				addMessage(e.getMessage());
			}
			log.log(Level.SEVERE, getMessage());
		} finally {
			String message = getMessage();
			if(!Util.isEmpty(message)) {
				String translatedMessage  = getTranslatedMessage();
				if(!Util.isEmpty(translatedMessage)) {
					message = translatedMessage;
				}
				//	
				ADialog.warn(windowNo, frame.getContainer(), "Error", message);
			}
		}
	}	//	init
	
	/** Window No		*/
	protected int 			windowNo;
	/**	Logger			*/
	private CLogger 		log = CLogger.getCLogger(getClass());
	/**	Label Display	*/
	private CLabel 			displayLabel 	= new CLabel();
	/**	Display			*/
	private CTextField 		displayField 	= new CTextField();
	/**	Confirm Panel	*/
	private ConfirmPanel 	confirmPanel = new ConfirmPanel(true);
	/**	Main panel		*/
	private FormFrame 		frame = null;

	/**
	 *  Dynamic Init
	 *  @throws Exception if Lookups cannot be initialized
	 *  @return true if initialized
	 */
	@Override
	public boolean dynInit() throws Exception {
		log.config("dynInit()");
		//	
		jbInit();
		confirmPanel.addActionListener(this);
		//	
		return true;
	}
	
	/**
	 * Get Message translated
	 * @return
	 * @return String
	 */
	private String getTranslatedMessage() {
		return Msg.parseTranslation(Env.getCtx(), getMessage());
	}
	
	/**
	 * Create UI Panel
	 * @throws Exception
	 * @return void
	 */
	private void jbInit() throws Exception {
		log.info("jbInit()");
		
		//
		loadButtons();
		CPanel displayPane = new CPanel();
		GridBagLayout displayLayout = new GridBagLayout();
		displayPane.setLayout(displayLayout);
		//	
		displayLabel.setText(Msg.translate(Env.getCtx(), "Weight"));
		displayLabel.setFont(new Font("Tahoma", Font.PLAIN, 42));
		displayField.setReadWrite(false);
		displayField.setFont(new Font("Tahoma", Font.PLAIN, 42));
		displayField.setHorizontalAlignment(CTextField.RIGHT);
		String defaulText = "- - - - - - - - - - -";
		
		displayField.setText(defaulText);
		//	
		displayPane.add(displayLabel,    new GridBagConstraints(2, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(0, 12, 5, 5), 0, 0));
		displayPane.add(displayField,    new GridBagConstraints(3, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(0, 0, 5, 12), 0, 0));
		
		//	Add Pane
		CPanel southPanel = new CPanel();
		BorderLayout southLayout = new BorderLayout();
    	southPanel.setLayout(southLayout);
    	southPanel.add(confirmPanel, BorderLayout.CENTER);
    	//	
		BorderLayout manLayout = new BorderLayout();
		CPanel mainPanel = new CPanel();
		mainPanel.setLayout(manLayout);
		mainPanel.setBorder(BorderFactory.createRaisedBevelBorder());
		CompiereColor.setBackground(mainPanel);
		mainPanel.add(displayPane, BorderLayout.NORTH);
		mainPanel.add(southPanel, BorderLayout.SOUTH);
		frame.getContainer().add(mainPanel, BorderLayout.CENTER);
	}

	/**
	 * Load Options to choice as buttons
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 03:54:28
	 * @return void
	 * @throws Exception 
	 */
	private void loadButtons() throws Exception{
		log.info("loadButtons()");
		List<MADDevice> weightScaleList = getWeightScaleList();
//		throw new Exception(Msg.translate(Env.getCtx(), "@WeightScaleNotConfigForUser@"));
		//
		AtomicInteger actionCounter = new AtomicInteger(0);
		weightScaleList.stream().forEach(weightScale -> {
			AppsAction action = new AppsAction(String.valueOf(actionCounter.getAndIncrement()), null, weightScale.getName());
			action.setDelegate(this);
			CButton button = (CButton) action.getButton(); 
			confirmPanel.addComponent(button);
			log.fine("MFTAWeightScale " + weightScale.toString());
		});
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		log.info("actionPerformed(ActionEvent e) " + e);
		if (e.getActionCommand().equals(ConfirmPanel.A_OK)) {
			log.fine("Action Comand OK");
			try {
				Trx.run(new TrxRunnable() {
					public void run(String transactionName) {
						processValue(transactionName);
						//	Stop
						stopService();
					}
				});
			} catch (Exception ex) {
				dispose();
			}
		}
		//  Cancel
		else if (e.getActionCommand().equals(ConfirmPanel.A_CANCEL)) {
			log.fine("Action Comand CANCEL");
			dispose();
		}
		//	Serial Port Configuration
		else {
			log.fine("Action Comand Any");
			Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR);
			setCurrentWeightScale(Integer.parseInt(e.getActionCommand()));
			stopService();
			boolean ok = startService();
			Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR);
			if(!ok) {
				dispose();
			}
		}
	}
	
	@Override
	public void dispose() {
		log.fine("Closed Window");
		stopService();
		frame.dispose();
	}
	
	@Override
	public void refreshDisplay(String value) {
		displayField.setText(value);
	}
}
