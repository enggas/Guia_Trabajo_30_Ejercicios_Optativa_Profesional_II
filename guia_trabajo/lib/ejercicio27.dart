import 'dart:io';

class AnalizadorTexto {
  void contarPalabras() {
    print('=== Analizador de Texto ===');

    stdout.write('Ingrese una frase o párrafo: ');
    String texto = stdin.readLineSync() ?? '';

    if (texto.trim().isEmpty) {
      print('Error: Ingrese texto válido.');
      return;
    }

    List<String> palabras = texto.trim().split(RegExp(r'\s+'));
    
    print('\nCantidad de palabras: ${palabras.length}');
    print('Cantidad de caracteres: ${texto.length}');
  }
}

void main() => AnalizadorTexto().contarPalabras();