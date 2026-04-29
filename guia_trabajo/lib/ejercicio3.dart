import 'dart:io';

class MatematicaBasica {
  void verificarParidad() {
    stdout.write('Ingrese un número entero: ');
    int? num = int.tryParse(stdin.readLineSync() ?? '');

    if (num == null) {
      print('Error: Ingrese un número entero válido.');
      return;
    }

    print(num % 2 == 0 ? 'Es Par' : 'Es Impar');
  }
}

void main() => MatematicaBasica().verificarParidad();