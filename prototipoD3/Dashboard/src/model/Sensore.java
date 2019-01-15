package model;

public class Sensore {
	
	private int id, stanza, edificio, distretto;
	private Tipo tipo;
	private double frequenza = 1;
	// soglia superiore ed inferiore del sensore
	private double sup = 30;
	private double inf = 18;
	private Segnale segnale;
	
	private Colore colore;

	public Sensore(int id, int stanza, int edificio, int distretto, Tipo tipo) {
		this.id = id;
		this.stanza = stanza;
		this.edificio = edificio;
		this.distretto = distretto;
		this.tipo = tipo;
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

	public double getSup() {
		return sup;
	}

	public void setSup(double sup) {
		this.sup = sup;
	}

	public double getInf() {
		return inf;
	}

	public void setInf(double inf) {
		this.inf = inf;
	}

	public double getFrequenza(double frequenza) {
		return frequenza;
	}
	
	public void setFrequenza(double frequenza) {
		this.frequenza = frequenza;
	}

	public Segnale getSegnale() {
		return segnale;
	}
	
	public void setSegnale(Segnale segnale) {
		this.segnale = segnale;
	}
	
	public String toString() {
		return "SENSORE " + id + " - colore: " + colore;
	}
	
	// aggiorna il segnale, calcola il colore del sensore e ritorna TRUE se � cambiato
	public boolean update(Segnale segnale) {
		Colore precedente = this.colore;
		return this.calcolaColore(segnale) != precedente;
	}
	
	private Colore calcolaColore(Segnale segnale) {
		double valore = segnale.getValore();
		if (valore <= sup && valore >= inf) {
			return colore = Colore.VERDE;
		} else {
			return colore = Colore.ROSSO;
		}		
	}
}
