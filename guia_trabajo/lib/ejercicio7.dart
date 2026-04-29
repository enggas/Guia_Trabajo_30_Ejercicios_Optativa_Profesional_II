import 'dart:io';

class CalculadoraBasica {
  void calcular() {
    print('=== Calculadora Básica ===');

    stdout.write('Ingrese primer número: ');
    double? a = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Ingrese segundo número: ');
    double? b = double.tryParse(stdin.readLineSync() ?? '');

    if (a == null || b == null) {
      print('Error: Números inválidos.');
      return;
    }

    stdout.write('Operación (+, -, *, /): ');
    String? op = stdin.readLineSync();

    double resultado;

    switch (op) {
      case '+':
        resultado = a + b;
        break;
      case '-':
        resultado = a - b;
        break;
      case '*':
        resultado = a * b;
        break;
      case '/':
        if (b == 0) {
          print('Error: No se puede dividir entre cero.');
          return;
        }
        resultado = a / b;
        break;
      default:
        print('Operación no válida.');
        return;
    }

    print('Resultado: $resultado');
  }
}

void main() => CalculadoraBasica().calcular();