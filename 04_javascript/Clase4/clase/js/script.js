// alert("hola js externo");



function calcularPrecioTotal() {
    console.log("ingreso a calcularPrecioTotal");

    //en cantEnt almaceno la cant de entradas que ingresó el usuario
    let cantEnt=document.getElementById("cantEntradas").value;
    console.log("cantEnt: " + cantEnt);

    document.getElementById("titulo").innerHTML="Comprar " + cantEnt + " entradas."

    //en porcDesc almaceno el descuento que seleccionó el usuario
    let porcDesc=document.getElementById("porcDescuento").value;
    console.log("porcDesc: " + porcDesc);

    //en descuento almacenamos el total de pesos para descontar
    let descuento=(cantEnt*1000) * porcDesc/100;
    console.log("descuento: " + descuento);

    //pretio total a pagar con el descuento
    let precioFin=(cantEnt*1000) - descuento;
    console.log("precioFin: " + precioFin);

    //modifico el input precio final para poner el total con descuento
    document.getElementById("precioFinal").value=precioFin;
    document.getElementById("precionFinal2").innerHTML=precioFin;
}