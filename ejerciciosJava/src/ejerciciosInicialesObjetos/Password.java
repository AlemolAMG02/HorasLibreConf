package ejerciciosInicialesObjetos;

import java.util.Iterator;

public class Password {
	// Atributos
	private int longitud = 8;
	private String contrasenia;
	
	// Métodos
	public Password() {
		super();
	}
	
	public Password(int longi) {
		this.longitud = longi;
		this.contrasenia = generarPassword();
		
	}
	
	public String generarPassword(){
		String pass = "";
		for (int i = 0; i < this.longitud;) {
			int valor = (int)(Math.random()*(122-48+1)+48);
			if(valor > 64 || valor < 58) {
				pass += valor;
				i++;
			}
		}
		return pass;
	}
	
	public boolean esFuerte() {	//TODO true si 2 MAYUS, 1 minus y 5 nums
		boolean fuerte = true;
		
		
		return fuerte;
	}

	public int getLongitud() {
		return longitud;
	}

	public void setLongitud(int longitud) {
		this.longitud = longitud;
	}

	public String getContrasenia() {
		return contrasenia;
	}
	
	
	
}
