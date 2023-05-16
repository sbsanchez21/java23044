let a=3
let b=4
console.log(`a+b= ${a+b}`)

let nombre="Juan"
let apellido="Perez"

// validarUsuario()

function validarUsuario() {
    console.log("ingresó a la función")
    let usu=prompt("usuario")
    let pass=prompt("password")

    if (usu=="psuarez@gmail.com" && pass=="1234") {
        console.log("válido")
    } else {
        console.log("Inválido")
    }
}

// para ejecutar una función hay que invocarla
// validarUsuario()

function mostrarFortaleza() {
    console.log("ingreso a funcion mostrarFortaleza")
    console.log(document.getElementById("pass").value)
    let pass=document.getElementById("pass").value

    if (pass.length<=4) {
        console.log("fortaleza baja")
    } else {
        console.log("fortaleza alta")
    }
}