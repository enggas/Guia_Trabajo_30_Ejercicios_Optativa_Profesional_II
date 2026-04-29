import 'dart:io';

class Persona {
  void obtenerEdad() {
    stdout.write('Nombre: ');
    String nombre = stdin.readLineSync() ?? 'Desconocido';

    stdout.write('Año de nacimiento: ');
    int? anio = int.tryParse(stdin.readLineSync() ?? '');

    if (anio == null || anio > DateTime.now().year) {
      print('Error: Año inválido.');
      return;
    }

    int edad = DateTime.now().year - anio;
    print('$nombre tiene $edad años.');
  }
}

void main() => Persona().obtenerEdad();