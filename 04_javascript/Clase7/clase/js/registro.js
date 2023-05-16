
// valida que usuario tenga un @ y el dominio codoACodo.edu.ar
function validarUsu() {
  console.log("ingresó a validarusu")
  
  // console.log(document)
  // console.log(document.body)
  // console.log(document.getElementById("user").value)

  // obtiene el valor ingresado por el usuario en el primer input y lo pone en la vairable user
  let user=document.getElementById("user").value
  
  console.log(`user: ${user}`)

  console.log( user.includes("@"))

  if (!user.includes("@")) {
    console.log("El usuario debe tener un @")
    document.getElementById("mensaje").innerHTML="El usuario debe tener un @"
    document.getElementById("mensaje").className="bg-danger m-1 p-1 text-center rounded"
    // document.getElementById("mensaje").style.color="red"
  } else if (!user.toLowerCase().includes("codoacodo.edu.ar")) {  
    document.getElementById("mensaje").innerHTML="El usuario debe tener dominio codoACodo.edu.ar"
    document.getElementById("mensaje").className="bg-danger m-1 p-1 text-center rounded"
  } else {
    document.getElementById("mensaje").innerHTML=""
    document.getElementById("mensaje").className=""
  }

}

function mostrarFort() {
  console.log("ingreso a mostrarfort")
  let pass=document.getElementById("pass").value
  console.log(`pass: ${pass}`)

  if (pass.length<=4) {
    document.getElementById("mensaje").innerHTML="Fortaleza Baja"
    document.getElementById("mensaje").className="bg-danger m-1 p-1 text-center rounded"    
  } else if(pass.length<=8) {  
    document.getElementById("mensaje").innerHTML="Fortaleza Media"
    document.getElementById("mensaje").className="bg-info m-1 p-1 text-center rounded"        
  } else {
    document.getElementById("mensaje").innerHTML="Fortaleza Alta"
    document.getElementById("mensaje").className="bg-success m-1 p-1 text-center rounded"        
  }
}