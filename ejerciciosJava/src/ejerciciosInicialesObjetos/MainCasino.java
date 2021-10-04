package ejerciciosInicialesObjetos;

public class MainCasino {

	public static void main(String[] args) {
		Casino casino = new Casino("Las Vegas",5000);	// Casino
		Jugador jug1 = new Jugador("Pepe", 100);		// Jugador
		
		//Mesas de juego
		BlackJack mesaBJ = new BlackJack();
		RojoYNegro mesaRN = new RojoYNegro();
		
		mesaBJ.jugar(jug1, 20);
		comprobarDinero(jug1);
		mesaRN.jugar(jug1, 30);
		mesaBJ.jugar(jug1, 20);
		comprobarDinero(jug1);
		
	}
	
	private static void comprobarDinero(Jugador j1) {
		System.out.println("Al jugador le quedan " + j1.getCash()+" euros.");
	}

}
