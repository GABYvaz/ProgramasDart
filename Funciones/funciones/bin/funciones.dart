import 'dart:io';

void main(List<String> arguments) {
 dividir();
 //bool r= esPar();
 print('¿El numero es par? : ${esPar()}');
 //Llamado a funciones que requieren parametros
 saludo1('Gaby');
 String nombre = 'Anahi';
 saludo1(nombre);
 saludo2('Gabriela', 2003);
 saludo3('Ana', 2020);
 String? nombre2;
 int? year2;
 saludo3(nombre2, year2);
 saludo4();
 saludo4('Transito');
 //saludo(2040);
 saludo4('Cupertino', 2040);
 //Uso de funciones anonimas
 var alumnos = Map();
 alumnos[1] = 'Anacleto';
 alumnos[2] = 'Teelesforo';
 alumnos[3] = 'cupertino';
 alumnos[4] = 'Pantaleon';
 alumnos[5] = 'Panfilo';
 alumnos[6] = 'Tranquilino';
 //Imprimiendo el map con una funcion anonima
 alumnos.forEach((key, value) => print('Clave: $key, valor $value'));
 }

 bool esPar(){
  //Funcion que regresa un valor bool y no recibe parametros
    var numero = 15;
    if(numero % 2 ==0) {
      return true;
    }else{
      return false;
    }
  }
void dividir(){
  int n1 = 12;
  int n2 = 5;
  int cociente;
  int residuo;
  double resultado;

  resultado = n1 / n2;
  print('Resultado de dividir $n1 entre $n2 es $resultado');

  cociente = n1 ~/ n2;
  print('Cociente de la division entre $n1 y $n2 es $cociente');

  residuo = n1 % n2;
  print('Residuo de la division entre $n1 y $n2 es $residuo');
}
void saludo1(String name){
  print('Hola $name');
}

void saludo2(String name, int year) {
  //Funciones con dos parametros posicionales
  print('Saludo2 Hola $name, estas en el año $year');
}
void saludo3(String? name, int? year){
  //Funcion con dos parametros posicionales
  //que podrian tener un valor nulo
  print('Saludo3 Hola $name, estas en el año $year');
}
void saludo4([String name = 'Desconocido', int year = 2023]){
  //Funcion con dos parametros opcionales
  //Se le pueden 0,1 o 2 parametros
  print('Saludo4 hola $name estas en el año $year');
}
