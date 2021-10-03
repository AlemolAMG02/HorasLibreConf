package ejerciciosInicialesObjetos;

import ejerciciosInicialesObjetos.Mesa;

public class BlackJack extends Mesa {
	
	public BlackJack() {
		super();
	}
	
	// Métodos
	private int numAleatorio() {
		return (int)(Math.random()*(27-19+1)+19);
	}
	
	public void jugar(Jugador j1,float apuesta) {
		if(j1.getCash() < apuesta) {
			System.out.println("El jugador no puede apostar " 
					+ apuesta + "€");
		} else {
			int numCartas = numAleatorio();
			if(numCartas > 21) {
				j1.setCash(j1.getCash() - apuesta);
			} else
				j1.setCash(j1.getCash() + (apuesta*3));
		}
	}
	
}
