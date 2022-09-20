/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.autonoma.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import pe.edu.autonoma.conexion.Conexion;
import pe.edu.autonoma.entity.Registro;

/**
 *
 * @author andro
 */
public class RegistroDao {

    private Connection conn;
    private PreparedStatement ps;

    public RegistroDao() {
        conn = Conexion.openConnection();
    }

    // Métodos CRUD
    // id, username, password, enable, name
    // Create
    public void insert(Registro registro) {
        // Base de datos se utiliza la nomenclatura Snake Case
        try {
            String sql = "INSERT INTO registro(nombre_usuario,apellido_usuario,fecha_usuario,telefono,direccion, usuario,contra, nivel) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, registro.getNombreUsuario());
            ps.setString(2, registro.getApellidoUsuario());
            ps.setString(3, registro.getFechaUsuario());
            ps.setInt(4, registro.getNumeroTelefonico());
            ps.setString(5, registro.getDireccion());
            ps.setString(6, registro.getUsuario());
            ps.setString(7, registro.getContra());
            ps.setString(8, registro.getNivel());

            ps.executeUpdate();
            ps.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
    }

    // READ
    // findAll, listar, list, fetchAll, getAll
    public List<Registro> list() {
        List<Registro> registros = new ArrayList<>();
        try {
            String sql = "SELECT * FROM  registro";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Registro registro = new Registro(rs.getInt("id"), rs.getString("nombre_usuario"),
                        rs.getString("apellido_usuario"), rs.getString("fecha_usuario"), rs.getString("usuario"), rs.getString("contra"));

                registros.add(registro);
            }
            ps.close();
            rs.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return registros;
    }

    // findById, GetById, GetEntity, listarId, findId
    public Optional<Registro> findId(int id) {
        Optional<Registro> optional = Optional.empty();
        try {
            String sql = "SELECT * FROM  registro WHERE id = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Registro registro = new Registro(rs.getString("nombre_usuario"),
                        rs.getString("apellido_usuario"), rs.getString("fecha_usuario"),rs.getInt("telefono"),rs.getString("direccion") ,rs.getString("usuario"), rs.getString("contra"));

                optional = Optional.of(registro);
            }
            ps.close();
            rs.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return optional;
    }

    // findBy____ : Buscar por un atributo, findByDni
    // fetchBy_____: Todos los demás queries, fetchByBornJanuary
    //
    public Optional<Registro> findByUsername(String username) {
        Optional<Registro> optional = Optional.empty();
        try {
            String sql = "SELECT * FROM registro WHERE usuario = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Registro registro = new Registro(rs.getInt("id"), rs.getString("nombre_usuario"),
                        rs.getString("apellido_usuario"), rs.getString("fecha_usuario"), rs.getString("usuario"), rs.getString("contra"));

                optional = Optional.of(registro);
            }
            ps.close();
            rs.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return optional;
    }

    //UPDATE
    // actualizar, update,
    public void update(Registro registro) {
        // Base de datos se utiliza la nomenclatura Snake Case
        try {  // id, username, password, enable, name
           
            String sql = "UPDATE registro SET nombre_usuario = ?, apellido_usuario = ?, fecha_usuario = ?, usuario = ? , contra = ?"
                    + "WHERE id = ?";

            ps = conn.prepareStatement(sql);
            ps.setString(1, registro.getNombreUsuario());
            ps.setString(2, registro.getApellidoUsuario());
            ps.setString(3, registro.getFechaUsuario());
            ps.setString(4, registro.getUsuario());
            ps.setString(5, registro.getContra());
            ps.setInt(6, registro.getId());

            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

    //DELETE
    // borrarID, deleteId, deleteById,
    public void deleteId(Integer id) {
        // Base de datos se utiliza la nomenclatura Snake Case
        try {
            String sql = "DELETE FROM registro WHERE id = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

}
