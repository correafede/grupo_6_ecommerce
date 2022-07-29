window.addEventListener("load", function() {
    let formulario = document.querySelector("form.reservation");

    formulario.addEventListener("submit", function (e){

        let errores = [];
        
        let campoNombre = document.querySelector ("input.nombre");
        
        if (campoNombre.value == "") {
           errores.push("El campo de nombre tiene que estar completo")
        } else if (campoNombre.value.length < 3) {
           errores.push("El campo de nombre debe tener al menos 3 caracteres");
        }
        let campoApellido = document.querySelector ("input.apellido");
        if (campoApellido.value == ""){
           errores.push ("El campo debe estar completo")
        } else if (campoApellido.value.length < 1){
           errores.push ("El campo Apellido debe tener al menos 1 caracter")
        }
        let campoEmail = document.querySelector ("input.email");
        if (campoEmail.value == ""){
           errores.push ("El campo debe estar completo")
        }
        let campoPassword = document.querySelector ("input.password");
        if(campoPassword.value.leght < 8) {
           errores.push ("El campo Password debe contener al menos 8 caracteres")
        }
if  (errores.length > 0) {
      e.preventDefault();
        
     let ulErrores = document.querySelector ("div.errores ul");
             for (let i = 0; i < errores.length; i++){
                 ulErrores.innerHTML += "<li>" + errores[i] + "</li>"
             }}
        });
    });