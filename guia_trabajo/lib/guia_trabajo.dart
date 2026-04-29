import 'dart:io';
import 'dart:math';

class Circulo {
  void calcularArea() {
    stdout.write('Ingrese el radio del círculo: ');
    double? radio = double.tryParse(stdin.readLineSync() ?? '');

    if (radio == null || radio <= 0) {
      print('Error: Ingrese un número positivo válido.');
      return;
    }

    double area = pi * pow(radio, 2);
    print('El área es: ${area.toStringAsFixed(2)}');
  }
}

void main() => Circulo().calcularArea();