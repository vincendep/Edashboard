package model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Distretto {
	
	private int id;
	private Colore colore;
	private Map<Integer, Edificio> edifici = new HashMap<>();

	public Distretto(int id) {
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public Colore getColore() {
		return colore;
	}
	
	public void setColore(Colore colore) {
		this.colore = colore;
	}

	public Map<Integer, Edificio> getEdifici() {
		return edifici;
	}

	public void setEdifici(Map<Integer, Edificio> edifici) {
		this.edifici = edifici;
	}
	
	public String toString() {
		return "DISTRETTO " + id + " - colore: " + colore ;
	}
	
	public boolean update() {
		Colore precedente = this.colore;
		return this.calcolaColore() != precedente; 
	}
	
	private Colore calcolaColore() {
		int tot = edifici.size();
		int red_count = 0;
		int yellow_count = 0;
		for (Map.Entry<Integer, Edificio> entry: edifici.entrySet()) {
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
