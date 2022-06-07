package pe.edu.autonoma.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import pe.edu.autonoma.conexion.Conexion;
import pe.edu.autonoma.entity.Mascota;

public class MascotaDao {

    //esta clase se encarga en hacer la conexion a la base de datos
    private Connection conn;
    private PreparedStatement ps;

    public MascotaDao() {

        conn = Conexion.openConnection();
    }

    //Metodos CRUD
    //Este va a ser el Create
    public void insert(Mascota mascota) {

        try {
            //Estos nombres vienen de la base de datos ,son las columnas
            String sql = "INSERT INTO paseo(nombre_mascota,fecha_mascota,tiempo_mascota,fk_idusuario) "
                    + "VALUES (?, ?, ?, ?)";

            try (PreparedStatement ps = conn.prepareStatement(sql)) {

                ps.setString(1, mascota.getNombreMacota());
                ps.setString(2, mascota.getFechaMascota());
                ps.setString(3, mascota.getTiempoMascota());
                ps.setInt(4, mascota.getIdUsuario());

                ps.executeUpdate();
            }

        } catch (Exception e) {
        }
    }

    // findAll, listar, list, fetchAll, getAll
    public List<Mascota> list(int id) {
        List<Mascota> mascotas = new ArrayList<>();
        try {
            String sql = "SELECT id, nombre_mascota, fecha_mascota, tiempo_mascota FROM  paseo WHERE fk_idusuario="+id+";";
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                Mascota mascota = new Mascota(rs.getInt("id"), rs.getString("nombre_mascota"),
                        rs.getString("fecha_mascota"), rs.getString("tiempo_mascota")
                );

                mascotas.add(mascota);
            }
            ps.close();
            rs.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return mascotas;
    }

    // findById, GetById, GetEntity, listarId, findId
    public Optional<Mascota> findId(Integer id) {
        Optional<Mascota> optional = Optional.empty();
        try {
            String sql = "SELECT * FROM  paseo WHERE id = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Mascota mascota = new Mascota(rs.getInt("id"), rs.getString("nombre_mascota"),
                        rs.getString("fecha_mascota"), rs.getString("tiempo_mascota")
                );
                
                optional = Optional.of(mascota);
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

    public void update(Mascota mascota) {
        // Base de datos se utiliza la nomenclatura Snake Case
        try {
            String sql = "UPDATE paseo SET nombre_mascota = ?, fecha_mascota = ?, tiempo_mascota = ? "
                    + "WHERE id = ?";

            ps = conn.prepareStatement(sql);
            ps.setString(1, mascota.getNombreMacota());
            ps.setString(2, mascota.getFechaMascota());
            ps.setString(3, mascota.getTiempoMascota());
            ps.setInt(4, mascota.getId());

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
            String sql = "DELETE FROM paseo WHERE id = ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);

            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
    }

}
