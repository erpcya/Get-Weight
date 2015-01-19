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
package org.spin.grid;


import java.util.List;
import java.util.logging.Level;

import org.adempiere.webui.apps.AEnv;
import org.adempiere.webui.component.Borderlayout;
import org.adempiere.webui.component.Button;
import org.adempiere.webui.component.ConfirmPanel;
import org.adempiere.webui.component.Grid;
import org.adempiere.webui.component.GridFactory;
import org.adempiere.webui.component.Panel;
import org.adempiere.webui.component.Row;
import org.adempiere.webui.component.Rows;
import org.adempiere.webui.component.Window;
import org.adempiere.webui.window.FDialog;
import org.compiere.model.GridTab;
import org.compiere.model.MSysConfig;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.util.TrxRunnable;
import org.spin.model.MFTAWeightScale;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zkex.zul.Center;
import org.zkoss.zkex.zul.North;
import org.zkoss.zkex.zul.South;

/**
 * @author Yamel Senih
 *
 */
public class WGetWeightUI extends WGetWeight implements EventListener {
	
	/**
	 * *** Constructor de la Clase ***
	 * @author Yamel Senih 25/03/2013, 19:08:33
	 * @param gridTab
	 */
	public WGetWeightUI(GridTab gridTab) {
		super(gridTab);
		log.fine("VGetWeightUI()");
		setTitle(Msg.translate(Env.getCtx(), "GetWeightFromScale") + " .. ");
		
		log.info(getGridTab().toString());
		
		window = new Window();
		
		p_WindowNo = getGridTab().getWindowNo();

		try	{
			loadWeightScale();
			if (!dynInit())
				return;
			zkInit();
			boolean sys = MSysConfig.getBooleanValue("OPEN_PORT_AUTOMATIC_IN_GETWEIGHT", true, 
					Env.getAD_Client_ID(Env.getCtx()));
			if(sys) {
				if(!startService()) {
					FDialog.error(p_WindowNo, window, "Error", getMessage());
					return;
				}
			setInitOK(true);
			AEnv.positionCenterScreen(window);
			}
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "", e);
			setInitOK(false);
		}
		AEnv.showWindow(window);
		
	}
	private Window window;
	/** Window No		*/
	protected int 		p_WindowNo;

	/**	Logger			*/
	private CLogger 	log = CLogger.getCLogger(getClass());
	//	
	private ConfirmPanel 	confirmPanel = new ConfirmPanel(true);
	private Borderlayout mainLayout = new Borderlayout();
	private Grid parameterLayout = GridFactory.newGridLayout();
	private Panel parameterPanel = new Panel();
	/**
	 *  Dynamic Init
	 *  @throws Exception if Lookups cannot be initialized
	 *  @return true if initialized
	 */
	@Override
	public boolean dynInit() throws Exception {
		log.config("dynInit()");

		System.setSecurityManager(null);
		zkInit();
		
		confirmPanel.addActionListener(this);
		window.setTitle(getTitle());
		window.setSizable(true);
		window.setBorder("normal");
		return true;
	}
	
	
	/**
	 * Create UI Panel
	 * @author Raul Muñoz 16/01/2015, 12:11:08
	 * @throws Exception
	 * @return void
	 */
	private void zkInit() throws Exception {
		log.info("jbInit()");
		window.setWidth("600px");
		window.setHeight("155px");
		window.appendChild(mainLayout);
		mainLayout.setWidth("99%");
		mainLayout.setHeight("100%");
		mainLayout.setHeight("100%");
		mainLayout.setWidth("99%");
		window.appendChild(mainLayout);

		parameterLayout.setWidth("100%");
		parameterPanel.appendChild(parameterLayout);
		North north = new North();
		north.setStyle("border: none");
		mainLayout.appendChild(north);
		north.appendChild(parameterPanel);
		
		Rows rows = null;
		Row row = null;
		
		parameterLayout.setWidth("800px");
		rows = parameterLayout.newRows();
		row = rows.newRow();
		
		//
		
		//	
		lDisplay.setText(Msg.translate(Env.getCtx(), "Weight"));
		fDisplay.setReadonly(true);
		lDisplay.setStyle("font-size:42px");
		fDisplay.setStyle("font-size:42px");
		fDisplay.setWidth("400px");
		fDisplay.setHeight("80px");
		fDisplay.setText("- - - - - - - - - - -  ");
		//	
		
		row.appendChild(lDisplay);
		row.appendChild(fDisplay);
		
		loadButtons();
		//	Add Pane
		South south = new South();
		south.setStyle("border: none");
		mainLayout.appendChild(south);
		south.appendChild(confirmPanel);
		confirmPanel.addActionListener(this);
//		Panel southPanel = new Panel();
//		Borderlayout southLayout = new Borderlayout();
//    	southPanel.appendChild(southLayout);
//    	southPanel.appendChild(confirmPanel);
//    	//	
//		Panel mainPanel = new Panel();
//		Borderlayout manLayout = new Borderlayout();
//		mainPanel.appendChild(manLayout);
////		mainPanel.setBorder(BorderFactory.createRaisedBevelBorder());
////		CompiereColor.setBackground(mainPanel);
//		mainPanel.appendChild(displayPane);
//		mainPanel.appendChild(southPanel);
		//	
//		dialog.getContentPane().app(mainPanel);    	
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
		log.info("loadButtons()");
		List<MFTAWeightScale> arrayWS = getArrayWeightScale();
//		System.out.println(arrayWS.size()+"sd");
		if(arrayWS.size() == 0)
			throw new Exception(Msg.translate(Env.getCtx(), "@WeightScaleNotConfigForUser@"));
		//	
		for(int i = 0; i < arrayWS.size(); i++){
			MFTAWeightScale weightScale = arrayWS.get(i);
			Button aa = new Button(weightScale.getName());
			aa.setLabel(weightScale.getName());
			aa.setName(weightScale.getName());
			aa.setId(String.valueOf(i));
			confirmPanel.addButton(aa);
			aa.addEventListener(Events.ON_CLICK, this);
			aa.setName(String.valueOf(i));
			aa.addActionListener(this);
			log.fine("MFTAWeightScale " + weightScale.toString());
		}
		
	}

//	@Override
//	public void actionPerformed(ActionEvent e) {
//		
//	}
	
	public void showWindow() {
		window.setVisible(true);
	}
	
	public void closeWindow() {
		window.dispose();
	}
	
	/**
	 * Process Value in the child
	 * @author <a href="mailto:yamelsenih@gmail.com">Yamel Senih</a> 29/03/2013, 15:12:28
	 * @param trxName
	 * @return
	 * @return boolean
	 */
	public boolean processValue(String trxName) {
		return false;
	}


	@Override
	public void onEvent(Event e) throws Exception {
		log.info("actionPerformed(ActionEvent e) " + e);

		if (e.getTarget().getId().equals(ConfirmPanel.A_OK))
		{
			log.fine("Action Comand OK");
			try
			{
				Trx.run(new TrxRunnable()
				{
					public void run(String trxName)
					{
						if (save(trxName))
						{	
							log.fine("save(" + trxName + ")");
							processValue(trxName);
							window.dispose();
						} else 
							FDialog.error(p_WindowNo, window, "Error", getMessage());
					}
				});
			}
			catch (Exception ex)
			{
				FDialog.error(p_WindowNo, window, "Error", ex.getLocalizedMessage());
			}
		}
		//  Cancel
		else if (e.getTarget().getId().equals(ConfirmPanel.A_CANCEL))
		{
			log.fine("Action Comand CANCEL");
			window.dispose();
		}
		//	Serial Port Configuration
		else {
			log.fine("Action Comand Any");
//			Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR);
			setCurrentWeightScale(Integer.parseInt(e.getTarget().getId()));
			stopService();
			boolean ok = startService();
//			Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR);
			if(!ok)
				FDialog.error(p_WindowNo, window, "Error", getMessage());
		}
	}
	
}
