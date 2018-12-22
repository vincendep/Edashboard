package client;

import java.io.Serializable;
import java.util.Date;

public class Segnale implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private float valore;
	private String data;
	private int idSensore;

	public Segnale(int id) {
		valore = getRandomValue();
		data = new Date().toString();
		idSensore = id;
	}
	
	
	
	public float getValore() {
		return valore;
	}



	public void setValore(float valore) {
		this.valore = valore;
	}



	public String getData() {
		return data;
	}



	public void setData(String data) {
		this.data = data;
	}



	public int getIdSensore() {
		return idSensore;
	}



	public void setIdSensore(int idSensore) {
		this.idSensore = idSensore;
	}



	private float getRandomValue() {
		return Math.round((Math.random() * 25 + 10) *10) / 10;
	}
	
	public String toString() {
		return "ID sensore: " + idSensore + "\tvalore: " + valore + "\tdata: " + data;
	}
}
