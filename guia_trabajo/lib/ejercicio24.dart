import 'dart:io';

class BuscadorElementos {
  void buscarElemento() {
    print('=== Buscador de Elementos en Lista ===');

    List<String> elementos = ['manzana', 'banana', 'naranja', 'uva', 'pera', 'mango'];

    stdout.write('Ingrese el elemento a buscar: ');
    String busqueda = stdin.readLineSync() ?? ''.toLowerCase().trim();

    if (elementos.contains(busqueda)) {
      print('El elemento "$busqueda" se encuentra en la lista.');
    } else {
      print('El elemento "$busqueda" NO se encuentra en la lista.');
    }
  }
}

void main() => BuscadorElementos().buscarElemento();