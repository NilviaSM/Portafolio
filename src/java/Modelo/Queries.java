package Modelo;

public class Queries {

    private String obtenerUsuario;
    private String obtenerUltimaReserva;
    private String obtenerClienteCompleto;

    public Queries() {
        this.obtenerUsuario = "SELECT u_id,u_razon_social,u_rut,u_nombre_usuario,u_contrasena,u_nombre_contacto,u_correo_electronico,u_telefono,u_rol_id FROM USUARIO WHERE u_correo_electronico = ? AND u_contrasena = ?";
        this.obtenerUltimaReserva = "SELECT oc_id,TO_CHAR(oc_fecha_creacion,'dd/MM/YYYY'),oc_cantidad_huespedes,oc_cantidad_habitaciones,TO_CHAR(oc_fecha_ingreso,'dd/MM/yyyy'),To_CHAR(oc_fecha_salida,'dd/MM/yyyy'),menu.m_nombre,oc_facturado,oc_monto_total,oc_cliente_id FROM ORDEN_COMPRA JOIN MENU ON orden_compra.oc_id_menu = menu.m_id WHERE OC_ID = ?";
        this.obtenerClienteCompleto = "SELECT c.c_id,c.c_rut_representante,c.c_direccion FROM CLIENTE C JOIN USUARIO U ON c.c_usuario_id = u.u_id WHERE u.u_id = ?";
    }

    public String getObtenerUsuario() {
        return obtenerUsuario;
    }

    public String getObtenerUltimaReserva() {
        return obtenerUltimaReserva;
    }

    public String getObtenerClienteCompleto() {
        return obtenerClienteCompleto;
    }
}
