import 'dart:io';

class NumeroMayor {
  void encontrarMayor() {
    print('=== Número Mayor de Tres Números ===');

    stdout.write('Ingrese el primer número: ');
    double? a = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Ingrese el segundo número: ');
    double? b = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Ingrese el tercer número: ');
    double? c = double.tryParse(stdin.readLineSync() ?? '');

    if (a == null || b == null || c == null) {
      print('Error: Ingrese números válidos.');
      return;
    }

    double mayor = a;
    if (b > mayor) mayor = b;
    if (c > mayor) mayor = c;

    print('\nEl número mayor es: $mayor');
  }
}

void main() => NumeroMayor().encontrarMayor();