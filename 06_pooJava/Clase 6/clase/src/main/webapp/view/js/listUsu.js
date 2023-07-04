//trae el modal mediante su id delModal
const delModal = document.getElementById('delModal')

// verifica que exista el modal, si existe ingresa al if
if (delModal) {
	//agrega un evento onload al modal, cuando el modal se levante ejecuta la siguiente función
  delModal.addEventListener('show.bs.modal', event => {
    
    //trae el link que levanto el modal
    const a = event.relatedTarget
    
    //trae el atributo idUser del link a
    const idUser = a.getAttribute('idUser')
    const user=a.getAttribute('user');
    
    const inputIdUser=delModal.querySelector("#idUser");
    inputIdUser.value=idUser;
    
	//obtengo el div dataUser para mostrar datos del usuario
    const divDataUser = delModal.querySelector('.modal-body #dataUser')
    //console.log(divDataUser);

	//asigno al div dataUser el idUser para mostrarlo
    divDataUser.innerHTML = user
  })
}