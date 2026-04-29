import 'dart:io';

class ListaTareas {
  void gestionarTareas() {
    print('=== Lista de Tareas (To-Do) ===');
    
    List<String> tareas = [];

    while (true) {
      print('\n1. Agregar tarea');
      print('2. Mostrar tareas');
      print('3. Salir');
      stdout.write('Seleccione una opción: ');

      String? opcion = stdin.readLineSync();

      if (opcion == '1') {
        stdout.write('Ingrese la nueva tarea: ');
        String? tarea = stdin.readLineSync();
        if (tarea != null && tarea.trim().isNotEmpty) {
          tareas.add(tarea.trim());
          print('✅ Tarea agregada.');
        }
      } 
      else if (opcion == '2') {
        if (tareas.isEmpty) {
          print('No hay tareas pendientes.');
        } else {
          print('\n--- Tus tareas ---');
          for (int i = 0; i < tareas.length; i++) {
            print('${i + 1}. ${tareas[i]}');
          }
        }
      } 
      else if (opcion == '3') {
        print('¡Hasta pronto!');
        break;
      } 
      else {
        print('Opción inválida.');
      }
    }
  }
}

void main() => ListaTareas().gestionarTareas();