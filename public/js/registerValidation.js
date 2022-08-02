window.onload = function () {
    let form = document.querySelector("#registerForm");
    let firstName = document.querySelector("#registerFirstName");
    let lastName = document.querySelector("#registerLastName");
    let email = document.querySelector("#registerEmail");
    let password = document.querySelector("#registerPassword");
    let file = document.querySelector("#registerImage");

    firstName.focus();
    form.addEventListener("submit", function (e) {
     
      let errors = [];
      if (firstName.value == "") {
        errors.push("El nombre es oliigatorio");
        firstName.classList.add("is-invalid");
      }
      if (firstName.value.length < 3 && firstName.value.length > 0) {
        errors.push("El nombre debe tener al menos 3 caracteres");
        firstName.classList.add("is-invalid");
      } else {
        firstName.classList.remove("is-invalid");
        firstName.classList.add("is-valid");
        lastName.focus();
      }
      if (lastName.value == "") {
        errors.push("El apellido es obligatorio");
        lastName.classList.add("is-invalid");
      }
      if (lastName.value.length < 1 && lastName.value.length > 0) {
        errors.push("El apellido debe tener al menos 1 caracter");
        lastName.classList.add("is-invalid");
      } else {
        lastName.classList.remove("is-invalid");
        lastName.classList.add("is-valid");
        email.focus();
      }
      if (/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email.value) === false && email.value !== "") {
        errors.push("Tiene que ingresar un email valido");
        email.classList.add("is-invalid");
      }
      if (email.value == "") {
        errors.push("El email es obligatorio");
        email.classList.add("is-invalid");
      } else {
        email.classList.remove("is-invalid");
        email.classList.add("is-valid");
        email.focus();
      }
      if (password.value == "") {
        errors.push("La contraseña es obligatoria");
        password.classList.add("is-invalid");
      }
      if (password.value.length < 8 && password.value.length > 0) {
        errors.push("la contraseña tiene que tener minino 8 caracteres");
        password.classList.add("is-invalid");
      } else {
        password.classList.remove("is-invalid");
        password.classList.add("is-valid");
      }
      let allowedExtensions = /(.jpg|.jpeg|.png|.gif)$/i;
      let filePath = file.value;
      if (filePath && !allowedExtensions.exec(filePath)) {
        errors.push("Por favor usar una extension valida(.jpg, .png, gif)");
        file.classList.add("is-invalid");
      } else {
        file.classList.remove("is-invalid");
        file.classList.add("is-valid");
      }


      if (errors.length > 0) {
        e.preventDefault();
        let errores = document.querySelector(".errores");
        errores.classList.add("alert-warning");
        errores.innerHTML = "";
        for (let i = 0; i < errors.length; i++) {
          let li = document.createElement("li");
          li.innerHTML = errors[i];
          errores.appendChild(li);
        }
      } else {
        alert("Usuario registrado");
      }
    });
  };