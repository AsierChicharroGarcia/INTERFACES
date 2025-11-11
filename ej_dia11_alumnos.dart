import 'dart:io';

List<String> alumnos = ["Asier"];
    
void main(List<String> args) {


bool compro = true;
while(compro = true){
print("\n********************************");
print ("ELIJE CUALQUIER OPCIÓN\n");
print ("1. MOSTRAR ALUMNO");
print ("2. AGREGAR ALUMNOS");
print ("3. ELIMINAR ALUMNO");
print ("0. SALIR");
print("\n********************************");
int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
if(opcion == 0){
  compro = false;
  break;}


menu(opcion);
}
}

void menu(opcion){


switch(opcion){
  case 1:
    print("\nHAS ELEGIDO MOSTRAR ALUMNO");
    listarAlumnos();
    break;

  case 2:

    print("\nHAS ELEGIDO AGREGAR ALUMNOS");
    print("\nDIME NOMBRE DEL ALUMNO A AGREGAR");
    String nombre = stdin.readLineSync()!;
  agregar(nombre);
  break;

  case 3:
    print("\nHAS ELEGIDO ELIMINAR ALUMNO");
    listarAlumnos();
    print("\nDIME NOMBRE DEL ALUMNO A ELIMINAR");
    String nombre = stdin.readLineSync()!;
    eliminar(nombre);
break;
  case 0:
  
    print("\nHAS ELEGIDO SALIR");

    break;

  default:
    print("\nOPCION NO VALIDA");
    break;
 

}

}

void listarAlumnos(){
    alumnos.forEach((alumno) {
      print(alumno);
    });
}


void agregar(nombre){
    alumnos.add(nombre);

}



void eliminar(nombre){
  if (alumnos.contains(nombre)){
    alumnos.remove(nombre);
  }else{
  print("EL ALUMNO NO ESTA EN LA LISTA");
}
}