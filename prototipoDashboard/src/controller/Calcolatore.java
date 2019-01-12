package controller;



import java.util.concurrent.ConcurrentLinkedQueue;

import model.Distretto;
import model.Segnale;

public class Calcolatore {
	
	private ConcurrentLinkedQueue<Segnale> segnali;
	private ConcurrentLinkedQueue<Distretto> distretti;

	
	public Calcolatore() {
		segnali = new ConcurrentLinkedQueue<Segnale>();
		distretti = new ConcurrentLinkedQueue<Distretto>();
		
	}
	
	public ConcurrentLinkedQueue<Segnale> getSegnali() {
		return segnali;
	}

	public void setSegnali(ConcurrentLinkedQueue<Segnale> segnali) {
		this.segnali = segnali;
	}

	public ConcurrentLinkedQueue<Distretto> getDistretti() {
		return distretti;
	}

	public void setDistretti(ConcurrentLinkedQueue<Distretto> distretti) {
		this.distretti = distretti;
	}
	
	

}
