import 'dart:io';

class IMC {
  void calcularIMC() {
    print('=== Clasificación de Índice de Masa Corporal (IMC) ===');

    stdout.write('Ingrese su peso en kilogramos (kg): ');
    double? peso = double.tryParse(stdin.readLineSync() ?? '');

    stdout.write('Ingrese su altura en metros (ej: 1.70): ');
    double? altura = double.tryParse(stdin.readLineSync() ?? '');

    if (peso == null || altura == null || peso <= 0 || altura <= 0) {
      print('Error: Ingrese valores válidos.');
      return;
    }

    double imc = peso / (altura * altura);

    print('\nSu IMC es: ${imc.toStringAsFixed(2)}');

    if (imc < 18.5) {
      print('Clasificación: Bajo peso');
    } else if (imc < 25) {
      print('Clasificación: Peso normal');
    } else if (imc < 30) {
      print('Clasificación: Sobrepeso');
    } else {
      print('Clasificación: Obesidad');
    }
  }
}

void main() => IMC().calcularIMC();