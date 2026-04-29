import 'dart:io';

class DiaSemana {
  void obtenerDia() {
    print('=== Día de la Semana ===');

    stdout.write('Ingrese un número (1-7): ');
    int? num = int.tryParse(stdin.readLineSync() ?? '');

    if (num == null || num < 1 || num > 7) {
      print('Error: Ingrese un número entre 1 y 7.');
      return;
    }

    String dia = switch (num) {
      1 => 'Lunes',
      2 => 'Martes',
      3 => 'Miércoles',
      4 => 'Jueves',
      5 => 'Viernes',
      6 => 'Sábado',
      7 => 'Domingo',
      _ => 'Error'
    };

    print('El día es: $dia');
  }
}

void main() => DiaSemana().obtenerDia();