import 'dart:io';

class DiasEnElAnio {
  void calcularDias() {
    print('=== Días transcurridos en el año ===');

    DateTime ahora = DateTime.now();
    DateTime inicioAnio = DateTime(ahora.year, 1, 1);

    int diasTranscurridos = ahora.difference(inicioAnio).inDays + 1;

    print('Hoy es el día número $diasTranscurridos del año ${ahora.year}');
  }
}

void main() => DiasEnElAnio().calcularDias();