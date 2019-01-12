package model;

import java.util.List;

public class Distretto {
	
	private int id;
	private List<Edificio> edifici;

	public Distretto() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Edificio> getEdifici() {
		return edifici;
	}

	public void setEdifici(List<Edificio> edifici) {
		this.edifici = edifici;
	}
	

}
