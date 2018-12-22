package server;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.net.ServerSocket;
import java.net.Socket;

import client.Segnale;

public class RicettoreSegnali {

	public final static int PORT = 7777;
	
	public static void main(String[] args) {
		try (ServerSocket server = new ServerSocket(PORT)) {
			System.out.println("Server in attesa di richieste...\n\n");
			while (true) {
				try {
					Socket connection = server.accept();
					InputStream in = connection.getInputStream();
					ObjectInputStream stream = new ObjectInputStream(in);
					Segnale segnale = (Segnale) stream.readObject();
					System.out.println("messaggio ricevuto: [" + segnale + "]\n");
					connection.close();
				} catch (IOException ex) {
					ex.printStackTrace();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} catch (IOException ex) {
			System.err.println("Impossibile avviare il server");
		}
	}
}
