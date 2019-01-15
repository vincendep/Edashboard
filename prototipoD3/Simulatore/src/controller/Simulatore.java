package controller;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.BindException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Date;

import model.Segnale;
import model.Tipo;

public class Simulatore {
	
	private static int NUM_DISTRETTI_PER_CITTA = 20;
	private static int NUM_EDIFICI_PER_DISTRETTO = 20;
	private static int NUM_STANZE_PER_EDIFICIO = 20;
	private static int NUM_SENSORI_PER_STANZA = 20;
	
	private static int PORT = 50000;
	
	private Socket socket;

	public void run() {
		int icount = 0;
		int jcount = 0;
		int kcount = 0;
		int lcount = 0;
		
		for (int i = 1; i <= NUM_DISTRETTI_PER_CITTA; i++) {
			icount++;
			for (int j = 1; j <= NUM_EDIFICI_PER_DISTRETTO; j++) {
				jcount++;
				for (int k = 1; k <= NUM_STANZE_PER_EDIFICIO; k++) {
					kcount++;
					for (int l = 1; l <= NUM_SENSORI_PER_STANZA; l++) {
						lcount++;
						
						double valore = Math.random() * 30 + 10;
						Date timestamp = new Date();
						boolean funzionamento = true;
						Segnale segnale = new Segnale(valore, Tipo.TEMPERATURA,
								timestamp, funzionamento, lcount, kcount, jcount, icount);
						try {
							socket = new Socket("localhost", PORT);
							OutputStream out = socket.getOutputStream();
							ObjectOutputStream stream = new ObjectOutputStream(out);
							stream.writeObject(segnale);
							stream.flush();
							/* CAUSE CRASH ON WINDOWS
							stream.close();
							out.close();
							socket.close();
							*/
						} catch (UnknownHostException e) {
							e.printStackTrace();
							return;
						} catch (BindException e) {
							e.printStackTrace();
							return;
						} catch (IOException e) {
							e.printStackTrace();
							return;
						}
						// Thread.sleep(1) CAUSE SLOWDOWNS ON WINDOWS
					}
				}
			}
		}
	}
}
