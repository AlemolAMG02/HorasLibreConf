/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author alemol
 */
public class Mensaje {
    private static int ID_ACTUAL = 1;
    private String texto;
    private Usuario escritor;
    private int id;

    public Mensaje(String texto, Usuario escritor) {
        this.texto = texto;
        this.escritor = escritor;
        this.id = this.ID_ACTUAL;
        this.ID_ACTUAL++;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public Usuario getEscritor() {
        return escritor;
    }

}
