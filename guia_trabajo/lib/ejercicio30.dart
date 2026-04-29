import 'dart:io';

class FormateadorFechas {
  void formatearFecha() {
    print('=== Formateador de Fechas ===');

    stdout.write('Ingrese una fecha (YYYY-MM-DD): ');
    String? input = stdin.readLineSync();

    try {
      DateTime fecha = DateTime.parse(input!);
      
      const List<String> meses = [
        '', 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
        'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'
      ];

      String formatoLargo = '${fecha.day} de ${meses[fecha.month]} del ${fecha.year}';
      
      print('Fecha formateada: $formatoLargo');
    } catch (e) {
      print('Error: Formato de fecha inválido. Use YYYY-MM-DD');
    }
  }
}

void main() => FormateadorFechas().formatearFecha();