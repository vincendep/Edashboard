package model;

import controller.Sistema.Colore;

public class Sensore {
	public static enum Tipo {TEMPERATURA, PRESSIONE, UMIDITA, LUMINOSITA};
	
	private int id, stanza, edifico, distretto;
	private Tipo tipo;
	private int frequenza;
	private Colore colore;
	 

	public Sensore() {
		// TODO Auto-generated constructor stub
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


	public int getEdifico() {
		return edifico;
	}


	public void setEdifico(int edifico) {
		this.edifico = edifico;
	}


	public int getDistretto() {
		return distretto;
	}


	public void setDistretto(int distretto) {
		this.distretto = distretto;
	}


	public Tipo getTipo() {
		return tipo;
	}


	public void setTipo(Tipo tipo) {
		this.tipo = tipo;
	}


	public int getFrequenza() {
		return frequenza;
	}


	public void setFrequenza(int frequenza) {
		this.frequenza = frequenza;
	}


	public Colore getColore() {
		return colore;
	}


	public void setColore(Colore colore) {
		this.colore = colore;
	}
	
	
}
