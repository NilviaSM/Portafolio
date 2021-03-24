/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Nilvia S Miranda
 */
public class Cliente {

    private int id;
    private String rut_rep_legal;
    private String direccion;
    private int usuario_id;
    private String nombre_empresa;
    private String correo_electronico;
    private int telefono;
    private String nombre_representante_legal;

    public String getNombre_empresa() {
        return nombre_empresa;
    }

    public String getNombre_representante_legal() {
        return nombre_representante_legal;
    }

    public void setNombre_empresa(String nombre_empresa) {
        this.nombre_empresa = nombre_empresa;
    }

    public void setNombre_representante_legal(String nombre_representante_legal) {
        this.nombre_representante_legal = nombre_representante_legal;
    }
    
    public Cliente() {
    }

    public void setCorreo_electronico(String correo_electronico) {
        this.correo_electronico = correo_electronico;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getCorreo_electronico() {
        return correo_electronico;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setNombre(String nombre) {
        this.nombre_empresa = nombre;
    }

    public String getNombre() {
        return nombre_empresa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRut_rep_legal() {
        return rut_rep_legal;
    }

    public void setRut_rep_legal(String rut_rep_legal) {
        this.rut_rep_legal = rut_rep_legal;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

}
