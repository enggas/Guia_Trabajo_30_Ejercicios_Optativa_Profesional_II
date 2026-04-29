import 'dart:io';

class VerificadorBisiesto {
  void verificarBisiesto() {
    print('=== Verificador de Año Bisiesto ===');

    stdout.write('Ingrese un año: ');
    int? anio = int.tryParse(stdin.readLineSync() ?? '');

    if (anio == null) {
      print('Error: Ingrese un año válido.');
      return;
    }

    bool esBisiesto = (anio % 4 == 0 && anio % 100 != 0) || (anio % 400 == 0);

    if (esBisiesto) {
      print('El año $anio **es bisiesto**.');
    } else {
      print('El año $anio **no es bisiesto**.');
    }
  }
}

void main() => VerificadorBisiesto().verificarBisiesto();