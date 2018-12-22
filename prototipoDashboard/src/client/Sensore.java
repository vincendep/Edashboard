package client;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.BindException;
import java.net.Socket;
import java.net.UnknownHostException;

public class Sensore {
	
	private static final int port = 7777;
	
	private Socket socket;
	private int id;
	private static int count = 0;

	public Sensore() {
		id = ++count;
	}

	private boolean connect() {
		try {
			socket = new Socket("localhost", port);
			return true;
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} catch (BindException e) {
			e.printStackTrace();;
			return false;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	public void sendMessage() {
		connect();
		try {
			OutputStream out = socket.getOutputStream();
			ObjectOutputStream stream = new ObjectOutputStream(out);
			stream.writeObject(new Segnale(id));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
