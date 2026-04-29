import 'dart:io';

class PromedioNotas {
  void calcularPromedio() {
    print('=== Promedio de 3 Notas ===');

    stdout.write('Ingrese nota 1: ');
    double? n1 = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Ingrese nota 2: ');
    double? n2 = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Ingrese nota 3: ');
    double? n3 = double.tryParse(stdin.readLineSync() ?? '');

    if (n1 == null || n2 == null || n3 == null) {
      print('Error: Ingrese números válidos.');
      return;
    }

    double promedio = (n1 + n2 + n3) / 3;
    print('\nEl promedio es: ${promedio.toStringAsFixed(2)}');

    if (promedio >= 60) {
      print('¡Aprobado!');
    } else {
      print('Reprobado');
    }
  }
}

void main() => PromedioNotas().calcularPromedio();