import 'dart:io';

class ContadorVocales {
  void contarVocales() {
    print('=== Contador de Vocales ===');

    stdout.write('Ingrese una frase: ');
    String texto = stdin.readLineSync() ?? ''.toLowerCase();

    int vocales = 0;
    for (var caracter in texto.runes) {
      String c = String.fromCharCode(caracter);
      if ('aeiouáéíóú'.contains(c)) {
        vocales++;
      }
    }

    print('La frase ingresada tiene $vocales vocales.');
  }
}

void main() => ContadorVocales().contarVocales();