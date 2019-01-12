package model;


import java.io.Serializable;
import java.util.Date;

import controller.Sistema;
import controller.Sistema.Tipo;

public class Segnale implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private float dato;
	private Sistema.Tipo tipo;
	private Date timestamp;
	private boolean funzionamento;
	private int id, stanza, edificio, distretto;
	
	
	public Segnale(float dato, Tipo tipo, Date timestamp, boolean funzionamento, int id, int stanza, int edificio,
			int distretto) {
		super();
		this.dato = dato;
		this.tipo = tipo;
		this.timestamp = timestamp;
		this.funzionamento = funzionamento;
		this.id = id;
		this.stanza = stanza;
		this.edificio = edificio;
		this.distretto = distretto;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public float getDato() {
		return dato;
	}
	public void setDato(float dato) {
		this.dato = dato;
	}
	public Tipo getTipo() {
		return tipo;
	}
	public void setTipo(Tipo tipo) {
		this.tipo = tipo;
	}
	public boolean isFunzionamento() {
		return funzionamento;
	}
	public void setFunzionamento(boolean funzionamento) {
		this.funzionamento = funzionamento;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}