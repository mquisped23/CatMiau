/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.autonoma.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {
    
       private static Connection conn;

        // Metodo para abrir la conexión a la base de datos
        public static Connection openConnection() {
            if ( conn != null )
                return conn;

            try {
                String dataBase="kanidos";  //Aca se ingresa el nombre de tu base de datos
                String usuario = "uaqvu0i8kb3sgb5x"; // el usuario
                String password = "VTDspfg75ljh7JVOO30n"; // tu password
                //String url = "jdbc:mysql://localhost:3306/kanidos?autoReconnect = true & useSSL = false";
                String url = "jdbc:mysql://uaqvu0i8kb3sgb5x:VTDspfg75ljh7JVOO30n@bycxivn8bz8po2dxakk7-mysql.services.clever-cloud.com:3306/bycxivn8bz8po2dxakk7?autoReconnect = true & useSSL = false";

            
                // Establecer el Driver de conexión
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, usuario, password);

                System.out.println("Conexion establecida");

            } catch (ClassNotFoundException | SQLException e) {
                System.out.println( e.getMessage() );
                System.out.println("Conexion Fallida");
            }
            return conn;
        }
        // Metodo para cerrar la conexion a la Base de datos
        public static void closeConnection() {
            try {
                if( conn != null ) {
                    conn.close();
                }
            } catch(Exception e) {
                System.out.println(e.getMessage());
            }

        }
    
    
    
}
