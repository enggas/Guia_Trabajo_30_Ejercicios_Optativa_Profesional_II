import 'dart:io';

class ConversorMoneda {
  void convertirMoneda() {
    print('=== Conversor de Moneda (USD a Córdoba) ===');

    // Tasa de cambio aproximada (puedes actualizarla)
    const double tasaCambio = 36.50;

    stdout.write('Ingrese la cantidad en dólares (USD): ');
    double? dolares = double.tryParse(stdin.readLineSync() ?? '');

    if (dolares == null || dolares < 0) {
      print('Error: Ingrese una cantidad válida.');
      return;
    }

    double cordobas = dolares * tasaCambio;

    print('\n${dolares.toStringAsFixed(2)} USD = ${cordobas.toStringAsFixed(2)} C\$');
    print('Tasa de cambio usada: 1 USD = ${tasaCambio.toStringAsFixed(2)} C\$');
  }
}

void main() => ConversorMoneda().convertirMoneda();