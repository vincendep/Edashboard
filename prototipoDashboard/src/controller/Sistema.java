package controller;

public class Sistema {

	public enum Colore {VERDE, GIALLO, ROSSO};
	public enum Tipo {TEMPERATURA, PRESSIONE, UMIDITA, LUMINOSITA};


	public Sistema() {
		// TODO Auto-generated constructor stub
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Calcolatore calcolatore = new Calcolatore();
		new Simulatore(calcolatore.getSegnali()).start();
		new Sender(calcolatore.getDistretti()).start();

	}

}
