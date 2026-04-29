import 'dart:io';

class Factorial {
  void calcularFactorial() {
    print('=== Factorial de un Número ===');

    stdout.write('Ingrese un número entero positivo: ');
    int? num = int.tryParse(stdin.readLineSync() ?? '');

    if (num == null || num < 0) {
      print('Error: Ingrese un número entero positivo.');
      return;
    }

    if (num == 0 || num == 1) {
      print('El factorial de $num es: 1');
      return;
    }

    int factorial = 1;
    for (int i = 2; i <= num; i++) {
      factorial *= i;
    }

    print('El factorial de $num es: $factorial');
  }
}

void main() => Factorial().calcularFactorial();