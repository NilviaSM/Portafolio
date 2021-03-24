package Modelo;

public class Reserva {
    private int id;
    private String fecha;
    private int cant_huespedes;
    private int cant_habitaciones;    
    private String fecha_ingreso;
    private String fecha_salida;    
    private String nombre_menu;
    private int facturado;
    private int monto_total;
    private int id_cliente;

    public Reserva() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getCant_huespedes() {
        return cant_huespedes;
    }

    public void setCant_huespedes(int cant_huespedes) {
        this.cant_huespedes = cant_huespedes;
    }

    public int getCant_habitaciones() {
        return cant_habitaciones;
    }

    public void setCant_habitaciones(int cant_habitaciones) {
        this.cant_habitaciones = cant_habitaciones;
    }

    public int getFacturado() {
        return facturado;
    }

    public void setFacturado(int facturado) {
        this.facturado = facturado;
    }

    public String getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(String fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }

    public String getFecha_salida() {
        return fecha_salida;
    }

    public void setFecha_salida(String fecha_salida) {
        this.fecha_salida = fecha_salida;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getNombre_menu() {
        return nombre_menu;
    }

    public void setNombre_menu(String nombre_menu) {
        this.nombre_menu = nombre_menu;
    }

    public int getMonto_total() {
        return monto_total;
    }

    public void setMonto_total(int monto_total) {
        this.monto_total = monto_total;
    }
}
