package ejerciciosInicialesObjetos;

import java.util.Scanner;

public class RojoYNegro extends Mesa {
	public static int COLOR_ROJO = 1;
	public static int COLOR_NEGRO = 0;
	
	public RojoYNegro() {
		super();
	}
	
	// Métodos
	private int colorAleatorio() {
		return (int)(Math.random()*2);
	}
	
	public int colorJugador() {
		int color = 0;
		do {
			System.out.println("Selecciona color, NEGRO = 0, ROJO = 1: ");
			color =leerEntero();
			if (!(color == COLOR_NEGRO || color == COLOR_ROJO)) {
				System.out.println("Color no elegido correctamente.");
				color = -1;
			}
		} while (color != COLOR_NEGRO && color != COLOR_ROJO);
		return color;
	}
		
	public void jugar(Jugador j1, float apuesta) {
		if(j1.getCash() < apuesta) {
			System.out.println("El jugador no puede apostar " 
					+ apuesta + "€");
		} else {
			int color = colorAleatorio();
			int colorJu = colorJugador();
			
			if(color != colorJu) {
				j1.setCash(j1.getCash() - apuesta);
			} else
				j1.setCash(j1.getCash() + (apuesta*2));
		}
	}
	
	
	public static int leerEntero() {
		Scanner sc = new Scanner(System.in);
		return sc.nextInt();
	}
}
	

