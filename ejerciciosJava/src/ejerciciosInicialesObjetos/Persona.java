package ejerciciosInicialesObjetos;

public class Persona {
	// Atributos
	public static final char SEXO = 'H';	// Constante para el sexo
	public static final int PESO_BAJO = -1;
	public static final int PESO_NORMAL = 0;
	public static final int SOBREPESO = 1;
	
	
	private String nombre = "Pepe";
	private int edad = 44;
	private String dni;
	private char sexo = SEXO;
	private float peso = 72;
	private float altura = (float) 1.78;
	
	// Métodos
	public Persona() {
		super();
		this.dni = generaDNI();
	}
	
	public Persona(String nombre,int edad,char sexo) {
		super();
		this.nombre = nombre;
		this.edad = edad;
		this.sexo = comprobarSexo(sexo);
		this.dni = generaDNI();
	}

	public Persona(String nombre, int edad, char sexo, float peso, float altura) {
		super();
		this.nombre = nombre;
		this.edad = edad;
		this.dni = generaDNI();
		this.sexo = comprobarSexo(sexo);
		this.peso = peso;
		this.altura = altura;
	}
	
	public int calcularIMC() {
		double imc = (peso/Math.pow(altura, 2));
		
		if(imc < 20)
			return PESO_BAJO;
		else
			if(imc > 25)
				return SOBREPESO;
			else
				return PESO_NORMAL;
	}
	
	public boolean esMayorDeEdad() {
		if (this.edad > 18)
			return true;
		return false;
	}
	
	private char comprobarSexo(char sexo) {
		if(sexo == 'H' || sexo == 'M')
			return sexo;
		else
			return SEXO;
	}
	
	private String generaDNI() {
		int numero = (int)(Math.random()*(99999999-10000000+1)+100000000);

		String caracteres="TRWAGMYFPDXBNJZSQVHLCKE";
        int resto = numero%23;
        char letra = caracteres.charAt(resto);
        
        System.out.println(""+numero+letra);	//Comprobante
        return ""+numero+letra;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public char getSexoPersona() {
		return sexo;
	}

	public void setSexo(char sexo) {
		this.sexo = sexo;
	}

	public float getPeso() {
		return peso;
	}

	public void setPeso(float peso) {
		this.peso = peso;
	}

	public float getAltura() {
		return altura;
	}

	public void setAltura(float altura) {
		this.altura = altura;
	}

	public static char getSEXO() {
		return SEXO;
	}

	public static int getPesoBajo() {
		return PESO_BAJO;
	}

	public static int getPesoNormal() {
		return PESO_NORMAL;
	}

	public static int getSobrepeso() {
		return SOBREPESO;
	}

	public String getDni() {
		return dni;
	}

	@Override
	public String toString() {
		return "Persona [nombre=" + nombre + ", edad=" + edad + ", dni=" + dni + ", sexo=" + sexo + ", peso=" + peso
				+ ", altura=" + altura + "]";
	}

}
