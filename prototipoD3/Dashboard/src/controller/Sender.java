package controller;

import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ConcurrentLinkedQueue;

import model.Distretto;

public class Sender extends Thread {
	
	private ConcurrentLinkedQueue<Distretto> distretti;
	
	public Sender(ConcurrentLinkedQueue<Distretto> distretti) {
		this.distretti = distretti;
	}
	
	@Override
	public void run() {
		
	}

}
