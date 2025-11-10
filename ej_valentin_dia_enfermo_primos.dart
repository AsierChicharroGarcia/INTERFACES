import 'dart:io';
import 'dart:math';
void main(){

bool salir = true;
bool primo = true;

while(salir == true){

print("Dime un número para ver si primo o no");
int numero = int.parse(stdin.readLineSync()!); 



if(numero <= 1){
 primo = false;
}else{
  for(int i = 2; i <= sqrt(numero).toInt(); i++){
    if(numero % i == 0){
primo = false;
      break;
    }
  }
}

if(primo == true){
  print("El número es primo");
}else{
  print("El número no es primo");
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

