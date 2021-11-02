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
    private String passwd;
    private boolean administrador;

    public Usuario(String nombre, String passwd) {
        super();
        this.nombre = nombre;
        this.passwd = passwd;
        this.administrador = false;
    }

    public Usuario() {
        this.nombre = "admin";
        this.passwd = "1234";
        this.administrador = true;
    }

    public Usuario(String nombre, String passwd, boolean administrador) {
        this.nombre = nombre;
        this.passwd = passwd;
        this.administrador = administrador;
    }
    
    

    public String getNombre() {
        return nombre;
    }

    
    public String getPasswd() {
        return passwd;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }
    
    
}
