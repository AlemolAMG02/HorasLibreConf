/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p1;

import com.mysql.jdbc.Driver;
//import com.mysql.jdbc;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author alejandro
 */
public class ejecuta {

    Connection conexion;
    Statement instruccion;
    ResultSet result;

    public ejecuta(String sentenciasql) {

        String url = "jdbc:mysql://localhost:3306/horasLibreConf?autoReconnect=true&useSSL=false";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Creamos el objeto conexion
            this.conexion = (Connection) DriverManager.getConnection(url, "ale", "1234");
            // Creamos un objeto Statement
            this.instruccion = (Statement) conexion.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            // Creamos el query
            // String sql = "select id_persona, nombre, apellido from persona";
            this.result = instruccion.executeQuery(sentenciasql);
            // Cerrar cada uno de los objetos utilizados

        } catch (ClassNotFoundException | SQLException e) {
        }

    }

    public ResultSet getResult() {
        return result;
    }

}
