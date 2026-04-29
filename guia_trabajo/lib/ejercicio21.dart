import 'dart:io';

class InteresSimple {
  void calcularInteres() {
    print('=== Cálculo de Interés Simple ===');

    stdout.write('Ingrese el capital (P): ');
    double? p = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Ingrese la tasa de interés anual (%) : ');
    double? r = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Ingrese el tiempo en años (T): ');
    double? t = double.tryParse(stdin.readLineSync() ?? '');

    if (p == null || r == null || t == null || p <= 0 || r <= 0 || t <= 0) {
      print('Error: Ingrese valores numéricos positivos.');
      return;
    }

    double interes = p * (r / 100) * t;
    double montoFinal = p + interes;

    print('\nInterés generado: \$${interes.toStringAsFixed(2)}');
    print('Monto final: \$${montoFinal.toStringAsFixed(2)}');
  }
}

void main() => InteresSimple().calcularInteres();