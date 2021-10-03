package ejerciciosInicialesObjetos;

public class Jugador {
	private String nombre;
	private float cash;
	
	public Jugador(String nombre, float dinero) {
		this.nombre = nombre;
		this.cash = dinero;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public float getCash() {
		return cash;
	}

	public void setCash(float cash) {
		this.cash = cash;
	}
	
	
}
