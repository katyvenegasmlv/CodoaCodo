const button = document.querySelector('button');

button.onclick = function() {
  
  //Cantidad de personas
  let cantidadDePersonas = 3;
  
  //variables 
  let nombresPersonas = [];
  let edadesPersonas = [];
  
  //RESPUESTAS
  let nombresMasGrande = []
  let edadMasGrande = 0
  
  if(cantidadDePersonas > 0){
    //Pregunta los nobres y las edades
    for (let i = 0; i < cantidadDePersonas; i++) {
      nombresPersonas.push(preguntarNombre());
      edadesPersonas.push(preguntarEdades());  
    }


    //busco la edad más grande
    edadMasGrande = buscarEdadMasGrande(edadesPersonas)

    // Busco el nombre de la edad mas grande pasada por parametro
    nombresMasGrande = buscarNombresMasGrande(edadMasGrande, nombresPersonas , edadesPersonas);

    if(nombresMasGrande.length === cantidadDePersonas && cantidadDePersonas > 1){
      alert('Todos tienen la misma edad')
    }
    else{

      if(nombresMasGrande.length === 1){
        alert( nombresMasGrande[0] + ' es mayor porque tiene '  + edadMasGrande + ' años'); 
      }
      else{
        let stringNombre = ""

        for (let i = 0; i < nombresMasGrande.length; i++) {
          
          stringNombre = stringNombre + nombresMasGrande[i] + ", "
          
        }
        alert( stringNombre +  'son mayores porque tienen '+ edadMasGrande + ' años')
      }

    }
  }
  else{
    alert("El Sistema no admite personas")
  }
    
  
}

function preguntarNombre (){

    let name = ""
    let nameValid = false
    
    while(!nameValid){
      name = prompt(('¿Cuál es tu nombre?'), placeholder = "Sólo se admiten letras"); 
    
      nameValid = validarNombre(name)
      if (!nameValid)
      { 
        
        alert(name + " no es valido como nombre");
      }
    }
      
    alert('¡Hola ' + name +'!');
    return name
  
}

function preguntarEdades() {
  
  let edad = ""
  let edadValid = false

 while(!edadValid){
  edad = parseInt(prompt(('¿Cuantos años tenés?'), placeholder = 'Sólo se admiten números del 0 al 99'));
  
  edadValid= validarEdad(edad)
  if (!edadValid)
  {
    alert (edad+' no es un numero valido'); 
    
  }
 }
 return edad
}

function validarNombre(name) {
 
  let valor;
 
  valor = /^[a-zA-Z]+$/.test(name)
  return valor;
}

function validarEdad(edad) {
 
  let edadValid;

  edadValid = /^([0-9])*$/.test(edad)

  return edadValid;
}

function buscarEdadMasGrande(arrayEdades) {

  let edadMayor;

  edadMayor = Math.max(...arrayEdades);
  
  return edadMayor
  

}

function buscarNombresMasGrande(edadMasGrande, arrayNombres , arrayEdades) {
  
  nombresMasGrandes = []

  for (let i = 0; i < arrayNombres.length; i++) {
    
    let nombre = arrayNombres[i]
    let edad = arrayEdades[i]
    
    if(edad === edadMasGrande){
      nombresMasGrandes.push(nombre)
    }
    
  }

  return nombresMasGrandes

}

