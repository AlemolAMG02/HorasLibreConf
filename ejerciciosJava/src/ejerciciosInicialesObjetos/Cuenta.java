package ejerciciosInicialesObjetos;

public class Cuenta {
	// Atributos
	private String titular;
	private float cuenta;
	
	//Métodos
	public Cuenta(String persona, float cantidad) {
		titular = persona;
		cuenta = cantidad;
	}
	
	public Cuenta (String persona) {
		titular = persona;
		cuenta = 0;
	}
	
	public boolean ingresar (float cantidad) {
		boolean valida = true;
		if(cantidad < 0)
			valida = false;
		else
			this.cuenta += cantidad;
		return valida;
	}
	
	public void retirar (float cantidad) {
		cuenta = cuenta - cantidad;
		if(cuenta < 0)
			cuenta = 0;
	}
	

	@Override
	public String toString() {
		return "Cuenta [titular=" + titular + ", cuenta=" + cuenta + "]";
	}

	public String getTitular() {
		return titular;
	}

	public void setTitular(String titular) {
		this.titular = titular;
	}

	public float getCuenta() {
		return cuenta;
	}

	public void setCuenta(float cuenta) {
		this.cuenta = cuenta;
	}
	
	
	

}
