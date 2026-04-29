import 'dart:io';

class InversionCadena {
  void invertirCadena() {
    print('=== Inversión de Cadena ===');

    stdout.write('Ingrese una frase o palabra: ');
    String texto = stdin.readLineSync() ?? '';

    if (texto.isEmpty) {
      print('Error: Ingrese texto válido.');
      return;
    }

    String invertida = texto.split('').reversed.join();
    print('Texto original: $texto');
    print('Texto invertido: $invertida');
  }
}

void main() => InversionCadena().invertirCadena();