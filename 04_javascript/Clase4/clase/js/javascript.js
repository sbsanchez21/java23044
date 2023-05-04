// alert("hola js")
let nombreMascota="Pupy"
// alert(nombreMascota)

//es mejor utilizar let
var cantClientes=15
//se sugiere usar let se destruye cuando se sale del alcance
let cantAlumnos=10

// aplicación variables
let usuario=""
let pass=""
// usuario=prompt("Ingrese su usuario")
// pass=prompt("Ingrese su password")
console.log("El usuario y pass ingresados son: " + usuario + " " + pass)

//variables numéricas
let x=5
let y=3

let nombre="Juan"
let apellido="Suarez"

let resultado=x+y
console.log("suma de x + y = " + resultado )

resultado=x*y
console.log("resultado de x * y = " + resultado )

console.log("Concatenar: " + apellido + ", " + nombre)
console.log(`Bienvenido a nuestra página ${apellido}, ${nombre}`)

// Operadores de comparación
let a=3
let b=4
let c=3
let d=6

resultado = (a == b);
console.log( `a == b: ${resultado}`);

resultado = (a != b);
console.log( `a != b: ${resultado}`);

resultado = (a > b);
console.log( `a > b: ${resultado}`);

resultado = (a < b);
console.log( `a < b: ${resultado}`);

resultado = (a >= b);
console.log( `a >= b: ${resultado}`);

resultado = (a >= d);
console.log( `a >= d: ${resultado}`);

resultado = (a >= c);
console.log( `a >= c: ${resultado}`);

resultado = (a <= c);
console.log( `a <= c: ${resultado}`);

// aplicación operadores de comparación
let edad
// edad=prompt("Ingrese su edad")

if (edad>=18) {
    console.log("Puede ingresar a la página")
} else {
    console.log("No puede ingresa a la página por se menor de edad")
}

// Operadores lógicos
// let a=3
// let b=4
// let c=3
// let d=6
resultado = (a > b) && (b > c);
console.log( `(a > b) && (b > c): ${resultado}`);

resultado = (b > a) && (b > c);
console.log( `(a > b) && (c > b): ${resultado}`);

resultado = (a > b) || (b > c);
console.log( `(a > b) ||  (b > c): ${resultado}`);

resultado = (b > a) || (b > c);
console.log( `(b > a) ||  (b > c): ${resultado}`);

resultado = !((b > a) || (b > c));
console.log( `!((b > a) || (b > c)): ${resultado}`);

// aplicación del AND &&
let user=""
let password=""
// user=prompt("Ingrese su usuaraio")
// password=prompt("Ingrese su contraseña")

console.log(user)
console.log(password)
if (user.toLowerCase()=="psuarez@gmail.com" && password.toLowerCase()=="1234") {
    console.log("Usuario y pass correctos, bienvenido a la página")
} else {
    console.log("Usuario y password Incorrectos, No puede ingresar a la página")
}

// aplicación OR || para ver si llevo paragüas
let hoyLlueve
let hayPronosticoLluvia
// hoyLlueve=prompt("Hoy llueve?")
// hayPronosticoLluvia=prompt("Hay pronóstico de lluvia?")

if (hoyLlueve=="si" || hayPronosticoLluvia=="si" ) {
    console.log("llevar paragüas")
} else {
    console.log("No llevar paragüas")
}


// condicional
edad=15
if (edad>=18) {
    //ejecuta esta instrucción si if es verdadero
    console.log("es mayor de edad")
} else {
    //ejecuta esta instrucción si if es falso
    console.log("NO es mayor de edad")
}

// switch
let nroMes = 99;
switch (nroMes) {
    case 1:
        console.log("Enero");
        break;
    
    case 2:
        console.log("Febrero");
        break;
        
    case 3:
        console.log("Marzo");
        break;

    default:
        console.log("No se encontró el mes");
        break;
}

// repide una instrucción cantidad de veces determinada
for (let i = 0; i < 12; i++) {
    //i==0, i==1, i==2, i==3
    console.log( `Valor de i: ${i}`);

    // DOM adelanto
    document.getElementById("mensaje").innerHTML=`Valor de i: ${i}`
}

