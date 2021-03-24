package Modelo;

/**
 *
 * @author Nilvia S Miranda
 */
public class Empleado {

    String id_empleado;
    String nombre_usuario;
    String nombre;
    String telefono;
    String correo_electronico;
    String rut;
    String contrasena;
    String id_usuario;
    String sueldo;
    String fecha_contrato;
    String fecha_nacimiento;
    String nombre_contacto;
    String userName;

    public Empleado() {
    }

    public Empleado(String id_empleado, String nombre_usuario, String nombre, String telefono, String correo_electronico, String rut, String contrasena, String id_usuario, String sueldo, String fecha_contrato, String fecha_nacimiento, String nombre_contacto, String userName) {
        this.id_empleado = id_empleado;
        this.nombre_usuario = nombre_usuario;
        this.nombre = nombre;
        this.telefono = telefono;
        this.correo_electronico = correo_electronico;
        this.rut = rut;
        this.contrasena = contrasena;
        this.id_usuario = id_usuario;
        this.sueldo = sueldo;
        this.fecha_contrato = fecha_contrato;
        this.fecha_nacimiento = fecha_nacimiento;
        this.nombre_contacto = nombre_contacto;
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }


    public String getId_empleado() {
        return id_empleado;
    }

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public String getTelefono() {
        return telefono;
    }

    public String getCorreo_electronico() {
        return correo_electronico;
    }

    public String getRut() {
        return rut;
    }

    public String getContrasena() {
        return contrasena;
    }

    public String getId_usuario() {
        return id_usuario;
    }

    public String getSueldo() {
        return sueldo;
    }

    public String getFecha_contrato() {
        return fecha_contrato;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public String getNombre_contacto() {
        return nombre_contacto;
    }

    public void setId_empleado(String id_empleado) {
        this.id_empleado = id_empleado;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public void setCorreo_electronico(String correo_electronico) {
        this.correo_electronico = correo_electronico;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public void setId_usuario(String id_usuario) {
        this.id_usuario = id_usuario;
    }

    public void setSueldo(String sueldo) {
        this.sueldo = sueldo;
    }

    public void setFecha_contrato(String fecha_contrato) {
        this.fecha_contrato = fecha_contrato;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public void setNombre_contacto(String nombre_contacto) {
        this.nombre_contacto = nombre_contacto;
    }

    

      
}
