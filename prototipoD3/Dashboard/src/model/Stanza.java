package model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class Stanza {

	private enum Tipo {
		STANZA,
		CORRIDOIO,
		ZONA_APERTA
	}
	
	private int id, edificio;
	private Tipo tipo;
	private Colore colore;
	private Map<Integer, Sensore> sensori = new HashMap<Integer, Sensore>();
	
	public Stanza(int id, int edificio) {
		this.id = id;
		this.edificio = edificio;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public int getEdificio() {
		return edificio;
	}
	
	public void setEdificio(int edificio) {
		this.edificio = edificio;
	}

	public Tipo getTipo() {
		return tipo;
	}

	public void setTipo(Tipo tipo) {
		this.tipo = tipo;
	}

	public Colore getColore() {
		return colore;
	}

	public void setColore(Colore colore) {
		this.colore = colore;
	}

	public Map<Integer, Sensore> getSensori() {
		return sensori;
	}

	public void setSensori(Map<Integer, Sensore> sensori) {
		this.sensori = sensori;
	}
	
	public String toString() {
		return "STANZA " + id + " - colore: " + colore;
	}
	
	public boolean update() {
		Colore precedente = this.colore;
		return this.calcolaColore() != precedente;
	}
	
	private Colore calcolaColore() {
		int tot = sensori.size();
		int red_count = 0;
		for (Map.Entry<Integer, Sensore> entry: sensori.entrySet()) {
			if (entry.getValue().getColore() == Colore.ROSSO) {
				red_count++;
			}
		}
		double percent = (double) red_count / tot;
		if (percent == 0) {
			return colore = Colore.VERDE;
		} else if (percent <= 0.3) {
			return colore = Colore.GIALLO;
		} else {
			return colore = Colore.ROSSO;
		}
	}

}
