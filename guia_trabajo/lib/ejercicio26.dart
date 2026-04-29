import 'dart:io';
import 'dart:math';

class Hipotenusa {
  void calcularHipotenusa() {
    print('=== Calculadora de Hipotenusa (Teorema de Pitágoras) ===');

    stdout.write('Ingrese el valor del cateto a: ');
    double? a = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Ingrese el valor del cateto b: ');
    double? b = double.tryParse(stdin.readLineSync() ?? '');

    if (a == null || b == null || a <= 0 || b <= 0) {
      print('Error: Ingrese valores positivos válidos.');
      return;
    }

    double hipotenusa = sqrt(pow(a, 2) + pow(b, 2));

    print('\nLa hipotenusa es: ${hipotenusa.toStringAsFixed(2)}');
  }
}

void main() => Hipotenusa().calcularHipotenusa();