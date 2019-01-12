package model;

import java.util.List;

public class Edificio {

	private int id;
	private List<Stanza> stanze;
	
	public Edificio() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Stanza> getStanze() {
		return stanze;
	}

	public void setStanze(List<Stanza> stanze) {
		this.stanze = stanze;
	}
	
	

}
