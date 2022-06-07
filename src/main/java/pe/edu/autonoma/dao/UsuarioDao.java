/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.autonoma.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Optional;
import pe.edu.autonoma.conexion.Conexion;
import pe.edu.autonoma.entity.Usuario;

/**
 *
 * @author andro
 */
public class UsuarioDao {

    private Connection conn;
    private PreparedStatement ps;

    public UsuarioDao() {
        conn = Conexion.openConnection();
    }
    // Métodos CRUD
    // id, username, password, enable, name
    // Create
    
    
    //Usamis el optional y traemos la entity Usuario,la cual se va a buscar la variable username
    public Optional<Usuario> findByUsername(String username) {
        //El Optional(Usuario) le ponemos commo objeto optional y lo igualamos a empty() que significa vacio
        Optional<Usuario> optional = Optional.empty();
        try {
            //llamamos a la tabla registro y buscamos la columna usuario
            String sql = "SELECT * FROM registro WHERE usuario = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Usuario usuario = new Usuario(
                        rs.getInt("id"),
                        rs.getString("usuario"), 
                        rs.getString("contra"),
                        rs.getString("nivel"));

                optional = Optional.of(usuario);
            }
            ps.close();
            rs.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return optional;
    }

}
