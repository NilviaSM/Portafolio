/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.logging.Logger;

/**
 *
 * @author Nilvia S Miranda
 */
public class Proveedor {
String id;
String userName;
String password;
String nombre;
String email;
String telefono;
String rut; 
String rubro;
String razon_social;
String rut_empresa;
String nombre_contacto;

    public Proveedor() {
    }

    public Proveedor(String id, String userName, String password, String nombre, String email, String telefono, String rut, String rubro, String razon_social, String rut_empresa, String nombre_contacto) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.nombre = nombre;
        this.email = email;
        this.telefono = telefono;
        this.rut = rut;
        this.rubro = rubro;
        this.razon_social = razon_social;
        this.rut_empresa = rut_empresa;
        this.nombre_contacto = nombre_contacto;
    }

    public String getRazon_social() {
        return razon_social;
    }

    public String getRut_empresa() {
        return rut_empresa;
    }

    public String getNombre_contacto() {
        return nombre_contacto;
    }

    public void setRazon_social(String razon_social) {
        this.razon_social = razon_social;
    }

    public void setRut_empresa(String rut_empresa) {
        this.rut_empresa = rut_empresa;
    }

    public void setNombre_contacto(String nombre_contacto) {
        this.nombre_contacto = nombre_contacto;
    }
   
    
 

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getRubro() {
        return rubro;
    }

    public void setRubro(String rubro) {
        this.rubro = rubro;
    }


}
