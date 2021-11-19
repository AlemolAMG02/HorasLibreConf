/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author alemol
 */
public class ListaUsuarios extends ArrayList<Usuario> {
    // private ArrayList<Usuario> usuarios = new ArrayList<Usuario>();

    public ListaUsuarios() {
        super();
        this.add(new Usuario());
        this.add(new Usuario("Alemol", "1234"));
    }

    public ListaUsuarios(ArrayList<Usuario> lista) {
        super();
        boolean admin = false;
        for (Usuario user : lista) {
            this.add(user);
            if (user.getNombre() == new Usuario().getNombre())
                if (user.getPasswd() == new Usuario().getPasswd())
                    admin = true;
        }
        if (!admin) {
            this.add(new Usuario());
        }
    }

}
