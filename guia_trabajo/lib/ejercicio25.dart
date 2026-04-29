import 'dart:io';

class ConversorMinutos {
  void convertirMinutosAHoras() {
    print('=== Conversor de Minutos a Horas ===');

    stdout.write('Ingrese la cantidad de minutos: ');
    int? minutos = int.tryParse(stdin.readLineSync() ?? '');

    if (minutos == null || minutos < 0) {
      print('Error: Ingrese un número válido y positivo.');
      return;
    }

    int horas = minutos ~/ 60;        // División entera
    int minutosRestantes = minutos % 60;

    print('$minutos minutos equivalen a:');
    print('$horas hora(s) y $minutosRestantes minuto(s)');
  }
}

void main() => ConversorMinutos().convertirMinutosAHoras();