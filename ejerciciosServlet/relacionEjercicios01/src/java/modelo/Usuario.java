/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author alemol
 */
public class Usuario {
    private String nombre;
    private String pass;

    public Usuario(String nombre, String pass) {
        this.nombre = nombre;
        this.pass = pass;
    }
    
    public Usuario(){
        this.nombre = "pepe";
        this.pass = "pepe";
    }

    public String getNombre() {
        return nombre;
    }

    public String getPass() {
        return pass;
    }
     
}
