package model;

import java.io.Serializable;
import java.util.Date;
 
public class Segnale implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private double valore;
	private Tipo tipo;
	private Date timestamp;
	private boolean funzionamento;
	private int sensore, stanza, edificio, distretto;
	
	
	public Segnale(double valore, Tipo tipo, Date timestamp, boolean funzionamento, int sensore, int stanza, int edificio,
			int distretto) {
		super();
		this.valore = valore;
		this.tipo = tipo;
		this.timestamp = timestamp;
		this.funzionamento = funzionamento;
		this.sensore = sensore;
		this.stanza = stanza;
		this.edificio = edificio;
		this.distretto = distretto;
	}
	
	public int getSensore() {
		return sensore;
	}
	
	public void setSensore(int sensore) {
		this.sensore = sensore;
	}
	
	public int getStanza() {
		return stanza;
	}
	
	public void setStanza(int stanza) {
		this.stanza = stanza;
	}
	
	public int getEdificio() {
		return edificio;
	}
	
	public void setEdificio(int edificio) {
		this.edificio = edificio;
	}
	
	public int getDistretto() {
		return distretto;
	}
	
	public void setDistretto(int distretto) {
		this.distretto = distretto;
	}
	
	public Date getTimestamp() {
		return this.timestamp;
	}
	
	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}
	
	public double getValore() {
		return valore;
	}
	
	public void setValore(double valore) {
		this.valore = valore;
	}
	
	public Tipo getTipo() {
		return tipo;
	}
	
	public void setTipo(Tipo tipo) {
		this.tipo = tipo;
	}
	
	public boolean getFunzionamento() {
		return funzionamento;
	}
	
	public void setFunzionamento(boolean funzionamento) {
		this.funzionamento = funzionamento;
	}
	
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}