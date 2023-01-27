import 'dart:html';

void main(List<String> arguments) {
  var unaLaptop =  Computadora(marca: 'Alienware', cpu: 'Intel core i9', ram: 32);
  print('Informacion de la laptop que te venden en internet: $unaLaptop');
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
    return 'Marca: $marca, CPU: $cpu, RAM: $ram';//Si es variable privada se pone this._marca
  }

}
