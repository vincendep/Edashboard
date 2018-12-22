package client;

public class Test {

	private static int NUM_SENSORI = 150000;
	
	public static void main(String argv[]) {
		new Test().startTest(NUM_SENSORI);
	}
	
	private void startTest(int numSensori) {
		for (int i = 0; i < numSensori; i++) {
			new Sensore().sendMessage();
		}
	}
}
