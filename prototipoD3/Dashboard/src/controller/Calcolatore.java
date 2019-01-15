package controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;

import model.Distretto;
import model.Edificio;
import model.Segnale;
import model.Sensore;
import model.Stanza;

public class Calcolatore {
	
	private static final int NUM_SEGNALI = 160000;
	private static final int PORT = 50000;
	
	private Map<Integer, Distretto> citta;


	public Calcolatore() {
		citta = new HashMap<Integer, Distretto>();
	}

	public Map<Integer, Distretto> getCitta() {
		return citta;
	}

	public void setCitta(Map<Integer, Distretto> citta) {
		this.citta = citta;
	}

	public void run() {
		int signal_count = 0;
		long start =  0;
		long elapsedTime = 0;
		
		try (ServerSocket server = new ServerSocket(PORT)) {
			
			System.out.println("Server started...\n\n");

			boolean isFinish = false;			
			while (!isFinish) {
				try {
					Socket connection = server.accept();
					InputStream in = connection.getInputStream();
					ObjectInputStream stream = new ObjectInputStream(in);

					Segnale segnale = (Segnale) stream.readObject();
					if (signal_count == 0) start = System.nanoTime();
					signal_count++;
					System.out.println("Ricevuto segnale numero " + signal_count);

					
					int id_distretto = segnale.getDistretto(); 
					int id_edificio = segnale.getEdificio(); 
					int id_stanza = segnale.getStanza(); 
					int id_sensore = segnale.getSensore();

					Sensore sensore;
					Stanza stanza;
					Edificio edificio;
					Distretto distretto;

					if (citta.containsKey(id_distretto)) {
						distretto = citta.get(id_distretto);

						if (distretto.getEdifici().containsKey(id_edificio)) {
							edificio = distretto.getEdifici().get(id_edificio);

							if (edificio.getStanze().containsKey(id_stanza)) {
								stanza = edificio.getStanze().get(id_stanza);

								if (stanza.getSensori().containsKey(id_sensore)) {
									sensore = stanza.getSensori().get(id_sensore);

								} else {
									sensore = new Sensore(id_sensore, id_stanza, id_edificio, id_distretto, segnale.getTipo());
									stanza.getSensori().put(id_sensore, sensore);	
								}

							} else {
								stanza = new Stanza(id_stanza, id_edificio);
								sensore = new Sensore(id_sensore, id_stanza, id_edificio, id_distretto, segnale.getTipo());
								stanza.getSensori().put(id_sensore, sensore);
								edificio.getStanze().put(id_stanza, stanza);
							} 

						} else {
							edificio = new Edificio(id_edificio, id_distretto);
							stanza = new Stanza(id_stanza, id_edificio);
							sensore = new Sensore(id_sensore, id_stanza, id_edificio, id_distretto, segnale.getTipo());
							stanza.getSensori().put(id_sensore, sensore);
							edificio.getStanze().put(id_stanza, stanza);
							distretto.getEdifici().put(id_edificio, edificio);
						}	

					} else {
						distretto = new Distretto(id_distretto);
						edificio = new Edificio(id_edificio, id_distretto);
						stanza = new Stanza(id_stanza, id_edificio);
						sensore = new Sensore(id_sensore, id_stanza, id_edificio, id_distretto, segnale.getTipo());
						stanza.getSensori().put(id_sensore, sensore);
						edificio.getStanze().put(id_stanza, stanza);
						distretto.getEdifici().put(id_edificio, edificio);
						citta.put(id_distretto, distretto); 
					}

					if (sensore.update(segnale)) {
						if (stanza.update()) {
							if (edificio.update()) {
								distretto.update();
							}
						}
					}

					connection.close();
					stream.close();
					in.close();
					
					// TODO exit condition
					if (signal_count == NUM_SEGNALI) {
						isFinish = true;
						elapsedTime = System.nanoTime() -  start;
					}

				} catch (IOException ex) {
					ex.printStackTrace();
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
			}
		} catch (IOException ex) {
			System.err.println("Impossibile avviare il server");
		}

		stampaCitta();
		System.out.println("\n\nTempo di elaborazione di " + signal_count + " segnali\t" + elapsedTime / 1000000000 + " secondi");

	}
	
	private void stampaCitta() {
		for (Map.Entry<Integer, Distretto> entry: citta.entrySet()) {
			
			Distretto distretto = entry.getValue();
			System.out.println(distretto.toString());
			
			for (Map.Entry<Integer, Edificio> _entry: distretto.getEdifici().entrySet()) {
				
				Edificio edificio = _entry.getValue();
				System.out.println("\t" + edificio.toString());
				
				for (Map.Entry<Integer, Stanza> __entry: edificio.getStanze().entrySet()) {
					
					Stanza stanza = __entry.getValue();
					System.out.println("\t\t" + stanza.toString());
					
					for (Map.Entry<Integer, Sensore> ___entry: stanza.getSensori().entrySet()) {
						
						Sensore sensore = ___entry.getValue();
						System.out.println("\t\t\t" + sensore.toString());
					}
					System.out.println();
				}
				System.out.println();
			}
			System.out.println();
		}
		System.out.println();
	}

}

