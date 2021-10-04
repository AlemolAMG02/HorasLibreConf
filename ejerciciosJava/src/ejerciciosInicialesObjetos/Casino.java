package ejerciciosInicialesObjetos;

import java.util.ArrayList;
import java.util.List;

public class Casino {
	private String nombre;
	private float cash;
	private List<Mesa> mesasJuego;
	
	public Casino(String nombre, float cash) {
		super();
		this.nombre = nombre;
		this.cash = cash;
		this.mesasJuego = new ArrayList<Mesa>();
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
	
	
	public void addMesa(Mesa mesa) {
		this.mesasJuego.add(mesa);
	}
	
	public void getMesa(int i) {
		mesasJuego.get(i);
	}	
	

}
