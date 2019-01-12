package model;

import java.util.List;

import controller.Sistema;

public class Stanza {

	
	private int id;
	private String tipo;
	Sistema.Colore colore;
	private List<Sensore> sensori;

	public Stanza() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Sistema.Colore getColore() {
		return colore;
	}

	public void setColore(Sistema.Colore colore) {
		this.colore = colore;
	}

	public List<Sensore> getSensori() {
		return sensori;
	}

	public void setSensori(List<Sensore> sensori) {
		this.sensori = sensori;
	}

}
