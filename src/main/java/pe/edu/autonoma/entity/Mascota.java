/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.autonoma.entity;

/**
 *
 * @author andro
 */
public class Mascota {
    
    private Integer id;
    private String nombreMacota;
    private String fechaMascota;
    private String tiempoMascota;
    private int idUsuario;

    public Mascota(String nombreMacota, String fechaMascota, String tiempoMascota, int idUsuario) {
        this.nombreMacota = nombreMacota;
        this.fechaMascota = fechaMascota;
        this.tiempoMascota = tiempoMascota;
        this.idUsuario = idUsuario;
    }

    public Mascota(Integer id, String nombreMacota, String fechaMascota, String tiempoMascota, int idUsuario) {
        this.id = id;
        this.nombreMacota = nombreMacota;
        this.fechaMascota = fechaMascota;
        this.tiempoMascota = tiempoMascota;
        this.idUsuario = idUsuario;
    }

    public Mascota(Integer id, String nombreMacota, String fechaMascota, String tiempoMascota) {
        this.id = id;
        this.nombreMacota = nombreMacota;
        this.fechaMascota = fechaMascota;
        this.tiempoMascota = tiempoMascota;
    }

    public Mascota(String nombreMacota, String fechaMascota, String tiempoMascota) {
        this.nombreMacota = nombreMacota;
        this.fechaMascota = fechaMascota;
        this.tiempoMascota = tiempoMascota;
    }
    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombreMacota() {
        return nombreMacota;
    }

    public void setNombreMacota(String nombreMacota) {
        this.nombreMacota = nombreMacota;
    }

    public String getFechaMascota() {
        return fechaMascota;
    }

    public void setFechaMascota(String fechaMascota) {
        this.fechaMascota = fechaMascota;
    }

    public String getTiempoMascota() {
        return tiempoMascota;
    }

    public void setTiempoMascota(String tiempoMascota) {
        this.tiempoMascota = tiempoMascota;
    }
    
        
}
