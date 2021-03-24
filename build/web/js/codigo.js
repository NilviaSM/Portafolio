function cargarArchivo(elemento) {
    var file = elemento.files[0];
    var objHidden = document.formulario.nombre;
    objHidden.value = file.name;
    document.formulario.target = "null";
    document.formulario.action = "/Login_Hostal/ProcesoArchivo";
    document.formulario.submit();
    alert("Archivo cargado correctamente");
}