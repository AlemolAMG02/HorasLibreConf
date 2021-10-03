package ejerciciosInicialesObjetos;

import java.util.Iterator;

public class Password {
	// Atributos
	private int longitud = 8;
	private String contrasenia;

	// Métodos
	public Password() {
		super();
		this.contrasenia = generarPassword();
	}

	public Password(int longi) {
		this.longitud = longi;
		this.contrasenia = generarPassword();

	}

	public String generarPassword() {
		String pass = "";
		for (int i = 0; i < this.longitud;) {
			int valor = (int) (Math.random() * (122 - 48 + 1) + 48);
			if (valor > 64 || valor < 58) {
				pass += (char)valor;
				i++;
			}
		}
		return pass;
	}

	public boolean esFuerte() { // TODO true si 2 MAYUS, 1 minus y 5 nums
		boolean fuerte = true;
		boolean mayus1 = false, mayus2 = false, minus = false, nums = false;
		int cantNums = 0;
		char contra[] = contrasenia.toCharArray();
		for (char c : contra) {
			if (Character.isDigit(c)) {
				cantNums++;
				if (cantNums >= 5)
					nums = true;
			}
			if (Character.isLowerCase(c))
				minus = true;
			if (Character.isUpperCase(c)) {
				if (!mayus1)
					mayus1 = true;
				else
					mayus2 = true;
			}
		}

		if (mayus1 && mayus2 && minus && nums) {
			fuerte = true;
		} else
			fuerte = false;

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

	@Override
	public String toString() {
		return "Password [longitud=" + longitud + ", contrasenia=" + contrasenia + "]";
	}

	
}
