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
public class Factura {
   private int id;
   private String razon_social;
   private String rut_empresa;
   private String direccion;
   private String fecha_creacion;
   private int cantidad_huespedes;
   private int monto_total;

    public Factura() {
    }

    public int getId() {
        return id;
    }

    public String getRazon_social() {
        return razon_social;
    }

    public String getRut_empresa() {
        return rut_empresa;
    }

    public String getDireccion() {
        return direccion;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public int getMonto_total() {
        return monto_total;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setRazon_social(String razon_social) {
        this.razon_social = razon_social;
    }

    public void setRut_empresa(String rut_empresa) {
        this.rut_empresa = rut_empresa;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public void setMonto_total(int monto_total) {
        this.monto_total = monto_total;
    }

    public int getCantidad_huespedes() {
        return cantidad_huespedes;
    }

    public void setCantidad_huespedes(int cantidad_huespedes) {
        this.cantidad_huespedes = cantidad_huespedes;
    }
   
    
}
