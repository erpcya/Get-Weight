package org.erpca.apps.form;

import java.awt.BorderLayout;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;

import java.sql.SQLException;
import java.util.logging.Level;

import javax.swing.BorderFactory;
import javax.swing.JButton;

import org.compiere.apps.ADialog;
import org.compiere.apps.AEnv;
import org.compiere.apps.ConfirmPanel;
import org.compiere.model.MUser;
import org.compiere.plaf.CompiereColor;
import org.compiere.swing.CDialog;
import org.compiere.swing.CLabel;
import org.compiere.swing.CPanel;
import org.compiere.swing.CTextField;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import org.compiere.util.Msg;
import org.sg.lib.EventosPuerto;
import org.sg.lib.ManejoPuerto;

public class VLectRom extends CDialog implements ActionListener {


	/**
	 * Constructor
	 * @param WindowNo
	 * @param mTab
	 */
	public VLectRom(int WindowNo){
		super(Env.getWindow(WindowNo), Msg.getMsg(Env.getCtx(), "SGGetWeight"), true);
		
		this.m_WindowNo = WindowNo;
		
		try {
			jbInit();
			getContentPane().add(centerPanel, BorderLayout.CENTER);
			getContentPane().add(southPanel, BorderLayout.SOUTH);
			m_initOK = dynInit();
		} catch (Exception e) {
			log.log(Level.SEVERE, "", e);
			ADialog.error(m_WindowNo, this, e.getMessage());
			fTrama.setText(Msg.translate(Env.getCtx(), e.getMessage()));
		} 
		
		AEnv.positionCenterWindow(Env.getWindow(WindowNo), this);
	}	//VLectRom
	
	@Override
	public void dispose() {
		detenerServicio();
		super.dispose();
	}
	
	public boolean isInitOK()
	{
		return m_initOK;
	}	//	isInitOK


	/**
	 *  Static Init
	 */
	private void jbInit()
	{
		leer = false;
		encendido = false;
		trama = new String();
		evtPuerto = new EventosPuerto() {
			@Override
			public void datosDisp() {
				lecturaPuerto();
			}
		};
		
		CompiereColor.setBackground(panel);
		//
		panel.setBorder(BorderFactory.createRaisedBevelBorder());
		southPanel.setLayout(southLayout);
		southLayout.setAlignment(FlowLayout.RIGHT);
		centerPanel.setLayout(centerLayout);
		bCancel.addActionListener(this);
		//
		
		bProcess.setEnabled(true);
		
		bProcess.addActionListener(this);
		
		lTrama.setText(Msg.translate(Env.getCtx(), "Weight"));
		lTrama.setFont(new Font("Tahoma", Font.PLAIN, 42));
		fTrama.setReadWrite(false);
		fTrama.setFont(new Font("Tahoma", Font.PLAIN, 42));
		fTrama.setHorizontalAlignment(CTextField.RIGHT);
		fTrama.setText("- - - - - - - - - - - - - - - - - ");
		//
		southPanel.add(bCancel, null);
		southPanel.add(bProcess, null);
		//
		centerPanel.add(lTrama,    new GridBagConstraints(2, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(0, 12, 5, 5), 0, 0));
		centerPanel.add(fTrama,    new GridBagConstraints(3, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(0, 0, 5, 12), 0, 0));
		weight = Env.ZERO;
	}
	
	
	/**
	 * Lee el puerto Serial y muestra la entrada en una caja de Texto 
	 * @author Yamel Senih 16/12/2010, 14:23:03
	 * @return void
	 */
	private void lecturaPuerto(){
		try {
			while(canalEnt.available() > 0) {
				int bit = canalEnt.read();
				if(bit == ascInicio && leer == false){
					leer = true;
					trama = "";
				}
				if(leer)
					trama += (char)bit;
				if(leer && bit == ascFin && trama.length() == longitudTrama){
					leer = false;
					fTrama.setText(trama.substring(vPosInicioCorte, vPosFinCorte));
				} 
			}
        } catch( IOException e ) {
        	log.log(Level.SEVERE, "", e);
			ADialog.error(m_WindowNo, this, e.getMessage());
        }
	}	//	lecturaPuerto	
	
	/**
	 * Procesa la trama para ejecutar acciones correspondientes
	 * @author Yamel Senih 21/04/2011, 12:10:24
	 * @return String
	 */
	private String procesarTrama() {
		if(trama.length() == longitudTrama){
			return trama.substring(posInicioCorte, posFinCorte).trim();
		}else{
			log.info(Msg.translate(Env.getCtx(), "SGIncomplete"));
			return "0";
		}
	}	//procesarTrama
	
	/**
	 * Detiene el servicio de recepción de tramas
	 * @author Yamel Senih 04/02/2011, 12:10:24
	 * @return void
	 */
	public void detenerServicio(){
		if(encendido){
			try {
				mPuerto.cerrarPuerto();
				encendido = false;
			} catch (IOException e) {
				log.log(Level.SEVERE, "", e);
			}
		}
	}	//detenerServicio
	
	/**
	 *  Dynamic Init
	 * @throws SQLException 
	 * @throws Exception 
	 */
	private boolean dynInit() throws Exception
	{
		//Usuario
		m_AD_User_ID = Env.getAD_User_ID(Env.getCtx());
		
		MUser user = new MUser(Env.getCtx(),this.m_AD_User_ID , getName());
		this.puerto = user.get_ValueAsString("PuertoRS");
		this.baudios = user.get_ValueAsInt("Baudios");
		this.bitDatos = user.get_ValueAsInt("BitDatos");
		this.bitParada = user.get_ValueAsInt("BitParada"); 
		this.paridad = user.get_ValueAsInt("Paridad");
		
		this.ascInicio = user.get_ValueAsInt("AscInicio");
		this.ascFin = user.get_ValueAsInt("AscFin");
		this.longitudTrama = new BigDecimal(user.get_ValueAsString("LongitudTrm")).intValue();
		this.posInicioCorte = new BigDecimal(user.get_ValueAsString("PosInicioCorte")).intValue();
		this.posFinCorte = new BigDecimal(user.get_ValueAsString("PosFinCorte")).intValue();
		this.vPosInicioCorte = new BigDecimal(user.get_ValueAsString("VPosInicioCorte")).intValue();
		this.vPosFinCorte = new BigDecimal(user.get_ValueAsString("VPosFinCorte")).intValue();
		if(this.vPosFinCorte > longitudTrama -1)
			vPosFinCorte = longitudTrama -1;
		if(this.posFinCorte > longitudTrama -1)
			posFinCorte = longitudTrama -1;

		//Inicio del Servicio de Recepcion de RS-232
		mPuerto = new ManejoPuerto(puerto, 
				baudios, 
				bitDatos, 
				bitParada, 
				paridad);
		mPuerto.abrirPuerto();
		canalEnt = mPuerto.getEntrada();
		mPuerto.agregarEscuchaPuerto(evtPuerto);
		mPuerto.notDatosDisponible(true);
		encendido = true;
		return true;
	}   //  dynInit
	
	/*
	 * actionPerformed
	 */
	@Override
	public void actionPerformed(ActionEvent e) {
		//	Almacena el peso en un Objeto Bigdecumal 
		if (e.getSource() == bProcess){
			weight = new BigDecimal(procesarTrama());
		}else if (e.getSource() == bCancel){
			weight = Env.ZERO;
		}
		dispose();
	}	//	actionPerformed

	/**
	 * Obtiene el peso de la romana
	 * @author Yamel Senih 26/04/2011, 23:04:45
	 * @return
	 * @return BigDecimal
	 */
	public BigDecimal getWeight(){
		return weight;
	}	//	BigDecimal
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1408913635847641544L;
	private CPanel panel = new CPanel();
	private int m_AD_User_ID = 0;
	private boolean m_initOK;
	
	private int 			m_WindowNo;
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(VLectRom.class);
	
	//  Static Variables
	private CPanel centerPanel = new CPanel();
	private CPanel southPanel = new CPanel();
	private FlowLayout southLayout = new FlowLayout();
	private GridBagLayout centerLayout = new GridBagLayout();
	private JButton bCancel = ConfirmPanel.createCancelButton(true);
	private JButton bProcess = ConfirmPanel.createProcessButton(true);
	private CLabel lTrama = new CLabel();
	private CTextField fTrama = new CTextField();
	
	//	Entrada Romana
	private String trama;
	private String puerto;
	private int baudios;
	private int bitDatos;
	private int bitParada;
	private int paridad;
	private int ascInicio;
	private int ascFin;
	private int posInicioCorte;
	private int posFinCorte;
	private int vPosInicioCorte;
	private int vPosFinCorte;
	private int longitudTrama;
	private boolean leer;
	private boolean encendido;
	private EventosPuerto evtPuerto;
	private ManejoPuerto mPuerto;
	private InputStream canalEnt;
	private BigDecimal weight;
}
