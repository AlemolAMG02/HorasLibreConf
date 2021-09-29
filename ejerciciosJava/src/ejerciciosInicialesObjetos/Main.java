package ejerciciosInicialesObjetos;

import java.util.Scanner;

import javax.swing.plaf.synth.SynthOptionPaneUI;

public class Main {

	public static void main(String[] args) {
		System.out.println("Creación de personas, escribe los siguientes datos: ");
		System.out.print("Nombre persona: ");
		String nombrePers = leerString();
		System.out.print("\nEdad persona: ");
		int edadPers = leerEntero();
		System.out.print("\nSexo persona ( H ó M): ");
		char sexoPers = leerString().charAt(0);
		System.out.print("\nPeso persona: ");
		int pesoPers = leerEntero();
		System.out.print("\nAltura persona: ");
		float altura = leerFloat();
		
		Persona persona1 = new Persona(nombrePers,edadPers, sexoPers,pesoPers,altura);
		Persona persona2 = new Persona(nombrePers,edadPers, sexoPers);
		Persona persona3 = new Persona();
		
		// Comprobamos el peso de las personas
		comprobarPeso(persona1);
		comprobarPeso(persona2);
		comprobarPeso(persona3);
		
		// Indicamos si es mayor de edad
		comprobarEdad(persona1);
		comprobarEdad(persona2);
		comprobarEdad(persona3);
		
		// Mostramos la información del usuario
		mostrarInformacion(persona1);
		mostrarInformacion(persona2);
		mostrarInformacion(persona3);
		
		

	}
	
	public static void comprobarPeso(Persona person) {
		if(person.calcularIMC() == person.PESO_BAJO) 
			System.out.println(person.getNombre()+" tiene un peso demasiado bajo.");
		if(person.calcularIMC() == person.PESO_NORMAL)
			System.out.println(person.getNombre()+" tiene un peso correcto.");
		if(person.calcularIMC() == person.SOBREPESO)
			System.out.println(person.getNombre()+" tiene un peso demasiado alto.");
	}
	
	public static void comprobarEdad(Persona person) {
		if (person.esMayorDeEdad())
			System.out.println(person.getNombre()+" es mayor de edad");
		else
			System.out.println(person.getNombre()+" no es mayor de edad");
	}
	
	public static void mostrarInformacion(Persona pers) {
		System.out.println("La información personal de " 
				+ pers.getNombre()+": \n" + pers.toString());
	}
	
	
	public static String leerString() {
		Scanner sc = new Scanner(System.in);
		return sc.next();
	}
	
	public static int leerEntero() {
		Scanner sc = new Scanner(System.in);
		return sc.nextInt();
	}
	
	public static float leerFloat() {
		Scanner sc = new Scanner(System.in);
		return sc.nextFloat();
	}
}
