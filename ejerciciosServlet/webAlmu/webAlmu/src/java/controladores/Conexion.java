package controladores;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class  Conexion {

    private static final String CONTROLLER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/futbol?serverTimezone=UTC";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "1234";
	private static Connection conexion = null;

    private Conexion() { 
        try {
            Class.forName(CONTROLLER);
            conexion = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            
        } catch (ClassNotFoundException e) {
            System.out.println("Error al cargar el controlador");
            e.printStackTrace();
            
        } catch (SQLException e) {
            System.out.println("Error en la conexi�n");
            e.printStackTrace();
        }
    }
    
	public static Connection getConexion() throws SQLException {
		if (conexion == null) new Conexion();
		else if (conexion.isClosed()) new Conexion();
		return conexion;
	}

}