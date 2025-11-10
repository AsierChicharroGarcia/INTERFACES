import 'dart:io';
void main(){

bool salir = true;

while(salir == true){

print("Dome un número para ver si es par o impar");
int numero = int.parse(stdin.readLineSync()!);


if(numero % 2 == 0){
  print("El número es par");
}else{
  print("El número es impar");
}  

print("pulsa enter para salir O 1 para continuar");
String text = stdin.readLineSync()!;
if(text == ""){
  salir = false;
}else{
  salir = true;
}



}

}