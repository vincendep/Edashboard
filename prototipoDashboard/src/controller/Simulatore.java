package controller;

import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ConcurrentLinkedQueue;

import controller.Sistema.Tipo;
import model.Segnale;

public class Simulatore extends Thread {
	
	private ConcurrentLinkedQueue<Segnale> segnali;

	public Simulatore(ConcurrentLinkedQueue<Segnale> segnali) {
		this.segnali = segnali;
	}
	
	@Override
	public void run() {
		final List<Tipo> values = Collections.unmodifiableList(Arrays.asList(Tipo.values()));
		Random random = new Random();
		HashMap<Integer, Segnale> map = new HashMap<Integer, Segnale>();
		
		
		while (true) {
			int id = random.nextInt(150000) + 1;
			int stanza = random.nextInt(20) + 1;
			int edificio = random.nextInt(50) + 1;
			int distretto = random.nextInt(15) + 1;
			float dato = random.nextFloat() * 30f;
			Tipo tipo = values.get(random.nextInt(values.size()));
			boolean funzionamento = (random.nextInt(2) + 1) == 2;
			
			Segnale segnale = new Segnale(dato, tipo, new Date(), funzionamento, id, stanza, edificio, distretto);
			segnali.add(segnale);
		}
		
		
	}
	
}
