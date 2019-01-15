package model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Edificio {

	private int id, distretto;
	private Colore colore;
	private Map<Integer, Stanza> stanze = new HashMap<>();
	
	public Edificio(int id, int distretto) {
		this.id = id;
		this.distretto = distretto;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public int getDistretto() {
		return distretto;
	}
	
	public void setDistretto(int distretto) {
		this.distretto = distretto;
	}

	public Colore getColore() {
		return colore;
	}
	
	public void setColore(Colore colore) {
		this.colore = colore;
	}
	
	public Map<Integer, Stanza> getStanze() {
		return stanze;
	}

	public void setStanze(Map<Integer,Stanza> stanze) {
		this.stanze = stanze;
	}
	
	public String toString() {
		return "EDIFICIO " + id + " - colore: " + colore;
	}
	
	public boolean update() {
		Colore precedente = this.colore;
		return this.calcolaColore() != precedente; 
	}
	
	private Colore calcolaColore() {
		int tot = stanze.size();
		int red_count = 0;
		int yellow_count = 0;
		for (Map.Entry<Integer, Stanza> entry: stanze.entrySet()) {
			Colore colore = entry.getValue().getColore();
			if (colore == Colore.ROSSO) {
				red_count++;
			}
			if (colore == Colore.GIALLO ) {
				yellow_count++;
			}
		}
		double percent = (double) red_count / tot;
		if (percent == 0) {
			if (yellow_count == 0 ) {
			return colore = Colore.VERDE;
			} else {
				return colore = Colore.GIALLO;
			}
		} else if (percent <= 0.3) {
			return colore = Colore.GIALLO;
		} else {
			return colore = Colore.ROSSO;
		}
	}

}
