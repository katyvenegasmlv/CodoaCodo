const button = document.querySelector('button');

button.onclick = function() {

  let name = prompt(('¿Cuál es tu nombre?'), placeholder = "Sólo se admiten letras"); 
  if (/^([0-9 ])*$/.test(name))
{
   alert(name + " no es valido como nombre");
   return false; 
}  
  alert('¡Hola ' + name +'!');

  let edad1 = parseInt(prompt(('¿Cuantos años tenés?'), placeholder = 'Sólo se admiten números del 0 al 99'));
  if (/^([0-9]{1,2})$/.test(edad1)== false)
  {alert (edad1+' no es un numero valido'); 
  return false;}
  let name2 = prompt(('¿Cuál es tu nombre?'), placeholder = "Sólo se admiten letras"); 
  if (/^([0-9 ])*$/.test(name2))
{
   alert(name2 + " no es valido como nombre");
   return false; 
}  
  alert('¡Hola ' + name2 +'!');
  let edad2 = parseInt(prompt(('¿Cuantos años tenés?'), placeholder = 'Sólo se admiten números del 0 al 99'));
  if (/^([0-9]{1,2})$/.test(edad2)==false)
  {alert (edad2+' no es un numero valido'); 
  return false;}
  let name3 = prompt(('¿Cuál es tu nombre?'), placeholder = "Sólo se admiten letras"); 
  if (/^([0-9 ])*$/.test(name3))
{
   alert(name3 + " no es valido como nombre");
   return false; 
}  
  alert('¡Hola ' + name3 +'!');
  let edad3 = parseInt(prompt(('¿Cuantos años tenés?'), placeholder = 'Sólo se admiten números del 0 al 99'));
  if (/^([0-9]{1,2})$/.test(edad1)==false)
  {alert (edad3+' no es un numero valido'); 
  return false;}
  let edadMayor = [edad1, edad2, edad3];
    let mayor = Math.max (...edadMayor);
  let nameMayor= [name, name2, name3] ;
   let nMayor= Object.values(nameMayor)
  alert(nMayor + ' es mayor porque tiene '  + mayor + ' años');
  }
