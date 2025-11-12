import 'dart:io';
import 'package:ej_valentin_dia_covid/Miclase' as miclase;

List<miclase.Profesor> profesores = [];
    
void main(List<String> args) {
var profesor = miclase.Profesor("Valentín", "interfaces",20,10,99999999999999);
profesor.reganar();
profesores.add(profesor);


bool compro = true;
while(compro = true){
print("\n********************************");
print ("ELIJE CUALQUIER OPCIÓN\n");
print ("1. MOSTRAR PROFESOR");
print ("2. AGREGAR PROFESOR");
print ("3. ELIMINAR PROFESOR");
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
    print("\nHAS ELEGIDO MOSTRAR PROFESOR");
    listarAlumnos();
    break;

  case 2:

    print("\nHAS ELEGIDO AGREGAR PROFESOR");
    print("\nDIME NOMBRE DEL PROFESOR A AGREGAR");
    String nombre = stdin.readLineSync()!;
    print("\nDIME MATERIA DEL PROFESOR A AGREGAR");
    String materia = stdin.readLineSync()!;
    print("\nDIME EDAD DEL PROFESOR A AGREGAR");
    int edad = int.parse(stdin.readLineSync()!);
    print("\nDIME SIMPATIA DEL PROFESOR A AGREGAR");
    int simpatia = int.parse(stdin.readLineSync()!);
    print("\nDIME SUSPENSOS DEL PROFESOR A AGREGAR");
    int suspensos = int.parse(stdin.readLineSync()!);

  agregar(nombre,materia,edad,simpatia,suspensos);
  break;

  case 3:
    print("\nHAS ELEGIDO ELIMINAR PROFESOR");
    listarAlumnos();
    print("\nDIME NOMBRE DEL PROFESOR A ELIMINAR");
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
  for (var profesor in profesores){

    print("NOMBRE: ${profesor.nombre}, MATERIA: ${profesor.materia}, EDAD: ${profesor.edad}, "
        "SIMPATIA: ${profesor.simpatia}, SUSPENSOS: ${profesor.suspensos}");

  }
}


void agregar(nombre,materia,edad,simpatia,suspensos){
  var profesor1 = miclase.Profesor(nombre, materia,edad,simpatia,suspensos);
  profesores.add(profesor1);

}



void eliminar(String nombre) {
  for (int i = 0; i < profesores.length; i++) {
    if (profesores[i].nombre == nombre) {
      profesores.removeAt(i);
      print("Profesor eliminado correctamente.");
      return;
    }
  }
  print("El profesor no está en la lista.");
}



