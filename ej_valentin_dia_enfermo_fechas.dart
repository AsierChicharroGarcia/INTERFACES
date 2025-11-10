import 'dart:io';
import 'dart:math';
void main(){


print("tu año de nacimiento");
int numero = int.parse(stdin.readLineSync()!); 

int edad = DateTime.now().year - numero;

if(edad >= 18){
  print("eres mayor de edad");
}else{
  print("eres menor de edad");
  }









}

