import 'dart:io';

class Nomina {
  void calcularSalario() {
    print('=== Cálculo de Salario Neto ===');

    stdout.write('Ingrese Salario Bruto: ');
    double? bruto = double.tryParse(stdin.readLineSync() ?? '');

    if (bruto == null || bruto <= 0) {
      print('Error: Ingrese un salario válido.');
      return;
    }

    double inss = bruto * 0.07;     // 7% INSS
    double neto = bruto - inss;

    print('\n--- RECIBO DE PAGO ---');
    print('Salario Bruto: \$${bruto.toStringAsFixed(2)}');
    print('Deducción INSS (7%): \$${inss.toStringAsFixed(2)}');
    print('Salario Neto: \$${neto.toStringAsFixed(2)}');
  }
}

void main() => Nomina().calcularSalario();