import 'dart:io';

class Termometro {
  void convertirCelsiusAFahrenheit() {
    stdout.write('Grados Celsius: ');
    double? c = double.tryParse(stdin.readLineSync() ?? '');

    if (c == null) {
      print('Error: Ingrese un número válido.');
      return;
    }

    double f = (c * 9 / 5) + 32;
    print('$c°C equivalen a ${f.toStringAsFixed(1)}°F');
  }
}

void main() => Termometro().convertirCelsiusAFahrenheit();