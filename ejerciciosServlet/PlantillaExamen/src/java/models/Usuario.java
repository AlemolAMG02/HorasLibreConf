package models;

import java.io.Serializable;

/**
 *
 * @author orlan
 */
public class Usuario implements Serializable{
    
    public static final String USUARIO_DB_NAME = "nombre";
    public static final String USUARIO_ID_DB_NAME = "id";
    public static final String NOMBRE_DB_NAME = "nombre";
    public static final String ADMIN_DB_NAME = "admin";
    public static final String PASSWORD_DB_NAME = "pass";

    private int idUsuario;
    private String nombre;
    private int admin;
    private String password;

    public Usuario() {
    }

    public Usuario(int idUsuario, String nombre, String password, int admin) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.admin = admin;
        this.password = password;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int isAdmin() {
        return admin;
    }

    public void setAdmin(int profesion) {
        this.admin = profesion;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
