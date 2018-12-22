package server;

import java.net.*;
import client.Segnale;
import java.io.*;

public class RicettoreSegnaliMultiThread {
	
	public final static int PORT = 7777;
	
	public static void main(String[] args) {
		try (ServerSocket server = new ServerSocket(PORT)) {
			System.out.println("Server in attesa di richieste...\n\n");
			while (true) {
				try {
					Socket connection = server.accept();
					Thread task = new Task(connection);
					task.start();
				} catch (IOException ex) {}
			}
		} catch (IOException ex) {
			System.err.println("Impossibile avviare il server");
		}
	}
	
	private static class Task extends Thread {
		
		private Socket connection;
		
		Task(Socket connection) {
			this.connection = connection;
		}
		@Override
		public void run() {
			try {
				InputStream in = connection.getInputStream();
				ObjectInputStream stream = new ObjectInputStream(in);
				Segnale segnale = (Segnale) stream.readObject();
				System.out.println("messaggio ricevuto: [" + segnale + "]\n");
				connection.close();
				this.interrupt();
			} catch (IOException | ClassNotFoundException ex) {
				System.err.println(ex);
			}
		}
	}
}
	
	