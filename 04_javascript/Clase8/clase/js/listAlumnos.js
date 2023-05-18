// agrega un alumno a la tabla con datos ejemplo
let contador=1
function addAlumno() {
    console.log(contador)
    contador++

    let tbody=document.getElementById("tbody")

    let tr=document.createElement("tr")
    tr.setAttribute("id",contador)

    let tdId=document.createElement("td")
    tdId.innerHTML=contador
    tr.appendChild(tdId)   

    let tdNom=document.createElement("td")
    tdNom.innerHTML="Nombre"
    tr.appendChild(tdNom)

    let tdApe=document.createElement("td")
    tdApe.innerHTML="Apellido"
    tr.appendChild(tdApe)

    let tdEmail=document.createElement("td")
    tdEmail.innerHTML="email"
    tr.appendChild(tdEmail)    

    let tdOpe=document.createElement("td")
    
    let a=document.createElement("a")
    a.setAttribute("href","#")
    a.setAttribute("onclick",`delAlumno('${contador}')`)
    a.innerHTML="<i class='bi bi-trash3-fill'></i>"
    tdOpe.appendChild(a)
    
    tr.appendChild(tdOpe) 

    tbody.appendChild(tr)
}

// elimina una fila basado en el id del tr
function delAlumno(idTr) {
    let tbody=document.getElementById("tbody")
    let tr=document.getElementById(idTr)
    
    tbody.removeChild(tr)

    
}