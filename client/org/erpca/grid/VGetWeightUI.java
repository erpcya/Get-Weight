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
 * Contributor(s): Yamel Senih www.erpconsultoresyasociados.com                      *
 *************************************************************************************/
package org.erpca.grid;

import java.awt.BorderLayout;
import java.awt.Cursor;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;
import java.util.logging.Level;

import javax.swing.BorderFactory;

import org.compiere.apps.ADialog;
import org.compiere.apps.AEnv;
import org.compiere.apps.AppsAction;
import org.compiere.apps.ConfirmPanel;
import org.compiere.model.GridTab;
import org.compiere.model.MSysConfig;
import org.compiere.plaf.CompiereColor;
import org.compiere.swing.CButton;
import org.compiere.swing.CDialog;
import org.compiere.swing.CPanel;
import org.compiere.swing.CTextField;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.util.TrxRunnable;
import org.erpca.model.MCUSTSerialPortConfig;

/**
 * @author Yamel Senih
 *
 */
public abstract class VGetWeightUI extends GetWeight implements ActionListener {
	
	/**
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 25/03/2013, 19:08:33
	 * @param gridTab
	 */
	public VGetWeightUI(GridTab gridTab) {
		super(gridTab);
		log.info(getGridTab().toString());
		
		p_WindowNo = getGridTab().getWindowNo();
		
		dialog = new CDialog(Env.getWindow(p_WindowNo), true){
			
			/**
			 * 
			 */
			private static final long serialVersionUID = -4983526002441762410L;

			public void dispose(){
				super.dispose();
				stopService();
			}
		};
		
		try {
			loadSerialPortConfig();
			if (!dynInit())
				return;
			
			boolean sys = MSysConfig.getBooleanValue("OPEN_PORT_AUTOMATIC_IN_GETWEIGHT", true, 
					Env.getAD_Client_ID(Env.getCtx()));
			if(sys) {
				if(!startService()) {
					ADialog.error(p_WindowNo, Env.getWindow(p_WindowNo), "Error", getMessage());
					return;
				}
			}
			setInitOK(true);
			AEnv.positionCenterWindow(Env.getWindow(p_WindowNo), dialog);
		} catch (Exception e) {
			ADialog.error(p_WindowNo, Env.getWindow(p_WindowNo), "Error", getMessage());
			log.log(Level.SEVERE, getMessage());
		}
		
	}
	
	/** Window No		*/
	protected int 		p_WindowNo;
	/**	Dialog			*/
	protected CDialog 	dialog;
	/**	Logger			*/
	private CLogger 	log = CLogger.getCLogger(getClass());
	//	
	private ConfirmPanel 	confirmPanel = new ConfirmPanel(true);

	/**
	 *  Dynamic Init
	 *  @throws Exception if Lookups cannot be initialized
	 *  @return true if initialized
	 */
	public boolean dynInit() throws Exception {
		log.config("");
		
		jbInit();
		
		super.dynInit();
		
		confirmPanel.addActionListener(this);
		dialog.setTitle(getTitle());
		
		
		return true;
	}
	
	
	/**
	 * Create UI Panel
	 * @author Yamel Senih 25/03/2013, 19:11:08
	 * @throws Exception
	 * @return void
	 */
	private void jbInit() throws Exception {
		//
		loadButtons();
		CPanel displayPane = new CPanel();
		GridBagLayout displayLayout = new GridBagLayout();
		displayPane.setLayout(displayLayout);
		//	
		lDisplay.setText(Msg.translate(Env.getCtx(), "Weight"));
		lDisplay.setFont(new Font("Tahoma", Font.PLAIN, 42));
		fDisplay.setReadWrite(false);
		fDisplay.setFont(new Font("Tahoma", Font.PLAIN, 42));
		fDisplay.setHorizontalAlignment(CTextField.RIGHT);
		fDisplay.setText("- - - - - - - - - - -  ");
		//	
		displayPane.add(lDisplay,    new GridBagConstraints(2, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(0, 12, 5, 5), 0, 0));
		displayPane.add(fDisplay,    new GridBagConstraints(3, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(0, 0, 5, 12), 0, 0));
		
		//	Add Pane
		CPanel southPanel = new CPanel();
		BorderLayout southLayout = new BorderLayout();
    	southPanel.setLayout(southLayout);
    	southPanel.add(confirmPanel, BorderLayout.CENTER);
    	//	
		CPanel mainPanel = new CPanel();
		BorderLayout manLayout = new BorderLayout();
		mainPanel.setLayout(manLayout);
		mainPanel.setBorder(BorderFactory.createRaisedBevelBorder());
		CompiereColor.setBackground(mainPanel);
		mainPanel.add(displayPane, BorderLayout.NORTH);
		mainPanel.add(southPanel, BorderLayout.SOUTH);
		//	
		dialog.getContentPane().add(mainPanel, BorderLayout.CENTER);    	
		//	
		weight = Env.ZERO;
	}

	/**
	 * Load Options to choice as buttons
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 03:54:28
	 * @return void
	 * @throws Exception 
	 */
	private void loadButtons() throws Exception{
		List<MCUSTSerialPortConfig> arraySPC = getArraySerialPortConfig();
		if(arraySPC.size() == 0)
			throw new Exception(Msg.translate(Env.getCtx(), "@PortNotConfiguredforUser@"));
		//	
		for(int i = 0; i < arraySPC.size(); i++){
			MCUSTSerialPortConfig spc = arraySPC.get(i);
			AppsAction aa = new AppsAction(String.valueOf(i), null, spc.getName());
			aa.setDelegate(this);
			CButton b = (CButton)aa.getButton(); 
			confirmPanel.addComponent(b);
		}
		
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if (e.getActionCommand().equals(ConfirmPanel.A_OK))
		{
			try
			{
				Trx.run(new TrxRunnable()
				{
					public void run(String trxName)
					{
						if (save(null, trxName))
						{	
							processValue(trxName);
							dialog.dispose();
						} else 
							ADialog.error(p_WindowNo, dialog, "Error", getMessage());
					}
				});
			}
			catch (Exception ex)
			{
				ADialog.error(p_WindowNo, dialog, "Error", ex.getLocalizedMessage());
			}
		}
		//  Cancel
		else if (e.getActionCommand().equals(ConfirmPanel.A_CANCEL))
		{
			dialog.dispose();
		}
		//	Serial Port Configuration
		else {
			Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR);
			setCurrentSPC(Integer.parseInt(e.getActionCommand()));
			stopService();
			boolean ok = startService();
			Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR);
			if(!ok)
				ADialog.error(p_WindowNo, dialog, "Error", getMessage());
		}
	}
	
	/**
	 * 
	 */
	public void info(){
		/*DecimalFormat format = DisplayType.getNumberFormat(DisplayType.Amount);
		dialog.setStatusLine(0, Msg.getMsg(Env.getCtx(), "Sum") + "  " + format.format(Env.ZERO));*/
	}
	
	public void showWindow() {
		dialog.setVisible(true);
	}
	
	public void closeWindow() {
		dialog.dispose();
	}
	
	/**
	 * Process Value in the child
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 15:12:28
	 * @param trxName
	 * @return
	 * @return boolean
	 */
	public abstract boolean processValue(String trxName);
	
}
