import 'dart:io';

void main(List<String> arguments) {
  var unaLaptop =  Computadora('Alienware','Intel core i9', 32);
  print('Informacion de la laptop que te venden en internet: $unaLaptop');
  stdout.write('¿Esta computadora es adecuada para la materia DMM?: ');
  String? respuesta = stdin.readLineSync();
  if(respuesta != null) {
    if(respuesta.contains('si')){
      unaLaptop.configurarAdecuada =true;
    }else{
      unaLaptop.configurarAdecuada = false;
    }
  }else{
    print('No se puede saber si la PC es adecuada porque se recibio null');
  }
  print('Laptop1 es adecuada para tu materia: ${unaLaptop.esAdecuada}');
  unaLaptop.marca = 'Lenovo';
  unaLaptop.cpu = 'Celeron';
  unaLaptop.ram = 4;
  print('Informacion de la laptop que te llego a casa: $unaLaptop');
}
class Computadora{  
  //Campos
  String? marca;
  String? cpu;
  int? ram;
  bool adecuada=false;

  //Constructor
  /*Computadora(String m, String c, int r){
    this.marca = m;
    this.cpu = c;
    this.ram = r;
  }*/

  //Forma corta de escribir un constructor
  Computadora(this.marca, this.cpu, this.ram);

  @override
  String toString() {
    return 'Marca: $marca, CPU: $cpu, RAM: $ram, es adecuada para DMM: $adecuada'; 
    //Si es variable privada se pone this._marca
  }
  //getter de la variable adecuada
  bool get esAdecuada{
    return adecuada;
  }
  //setter de la variable adecuada
  set configurarAdecuada(bool valor){
    adecuada = valor;
  }

}
