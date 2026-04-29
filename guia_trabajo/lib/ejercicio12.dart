import 'dart:io';

class TablaMultiplicar {
  void mostrarTabla() {
    print('=== Tabla de Multiplicar ===');

    stdout.write('Ingrese un número: ');
    int? num = int.tryParse(stdin.readLineSync() ?? '');

    if (num == null || num <= 0) {
      print('Error: Ingrese un número positivo.');
      return;
    }

    print('\nTabla del $num:');
    for (int i = 1; i <= 10; i++) {
      print('$num x $i = ${num * i}');
    }
  }
}

void main() => TablaMultiplicar().mostrarTabla();