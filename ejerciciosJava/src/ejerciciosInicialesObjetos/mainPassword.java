package ejerciciosInicialesObjetos;

public class mainPassword {

	public static void main(String[] args) {
		Password pass1 = new Password();
		Password pass2 = new Password(12);
		
		System.out.println("Contrase�a 1" + pass1);
		System.out.println("Contrase�a 2" + pass2);
	}

}
