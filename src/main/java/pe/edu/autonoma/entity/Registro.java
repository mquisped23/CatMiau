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
public class Registro {

    private Integer id;
    private String nombreUsuario;
    private String apellidoUsuario;
    private String fechaUsuario;
    private Integer numeroTelefonico;
    private String direccion;
    private String usuario;
    private String contra;
    private String nivel;

    public Registro() {
    }

    public Registro(Integer id, String nombreUsuario, String apellidoUsuario, String fechaUsuario, String usuario, String contra) {
        this.id = id;
        this.nombreUsuario = nombreUsuario;
        this.apellidoUsuario = apellidoUsuario;
        this.fechaUsuario = fechaUsuario;
        this.usuario = usuario;
        this.contra = contra;
    }

    public Registro(String nombreUsuario, String apellidoUsuario, String fechaUsuario, String usuario, String contra,String nivel) {
        this.nombreUsuario = nombreUsuario;
        this.apellidoUsuario = apellidoUsuario;
        this.fechaUsuario = fechaUsuario;
        this.usuario = usuario;
        this.contra = contra;
        this.nivel = nivel;
    }

    public Registro(String nombreUsuario, String apellidoUsuario, String fechaUsuario, Integer numeroTelefonico, String direccion, String usuario, String contra, String nivel) {
        this.nombreUsuario = nombreUsuario;
        this.apellidoUsuario = apellidoUsuario;
        this.fechaUsuario = fechaUsuario;
        this.numeroTelefonico = numeroTelefonico;
        this.direccion = direccion;
        this.usuario = usuario;
        this.contra = contra;
        this.nivel = nivel;
    }

    public Registro(String nombreUsuario, String apellidoUsuario, String fechaUsuario, Integer numeroTelefonico, String direccion, String usuario, String contra) {
        this.nombreUsuario = nombreUsuario;
        this.apellidoUsuario = apellidoUsuario;
        this.fechaUsuario = fechaUsuario;
        this.numeroTelefonico = numeroTelefonico;
        this.direccion = direccion;
        this.usuario = usuario;
        this.contra = contra;
    }
    
    

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getApellidoUsuario() {
        return apellidoUsuario;
    }

    public void setApellidoUsuario(String apellidoUsuario) {
        this.apellidoUsuario = apellidoUsuario;
    }

    public String getFechaUsuario() {
        return fechaUsuario;
    }

    public void setFechaUsuario(String fechaUsuario) {
        this.fechaUsuario = fechaUsuario;
    }

    public Integer getNumeroTelefonico() {
        return numeroTelefonico;
    }

    public void setNumeroTelefonico(Integer numeroTelefonico) {
        this.numeroTelefonico = numeroTelefonico;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    
    

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

   
   
    
}
