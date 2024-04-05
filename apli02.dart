import 'dart:math';

// Definir clase 
class Calculadora {
  double suma(double a, double b) => a + b;
  double resta(double a, double b) => a - b;
  double multiplicacion(double a, double b) => a * b;
  double division(double a, double b) => a / b;
}

// Definir el mixin
mixin OperacionesAdicionales {
  num potencia(double base, double exponente) => pow(base, exponente);
  double raizCuadrada(double numero) => sqrt(numero);

}


// Clase que utiliza ambas mixins y es capaz de realizar todas las operaciones definidas
class CalculadoraAvanzada extends Calculadora with OperacionesAdicionales {}

void main() {
  // Crear un objeto de tipo CalculadoraAvanzada
  var calculadora = CalculadoraAvanzada();

  // Realizar algunas operaciones matemáticas básicas
  print('Suma: ${calculadora.suma(20, 30)}');
  print('Resta: ${calculadora.resta(100, 25)}');
  print('Multiplicación: ${calculadora.multiplicacion(12, 5)}');
  print('División: ${calculadora.division(20, 4)}');

  // Realizar algunas operaciones matemáticas avanzadas
  print('Potencia: ${calculadora.potencia(2, 6)}');
  print('Raíz cuadrada: ${calculadora.raizCuadrada(25)}');
}
