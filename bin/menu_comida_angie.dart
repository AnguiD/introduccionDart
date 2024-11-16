import 'dart:io';

void main() {
  Map<String, double> menu = {
    'Makis': 120.0,
    'Yakimeshi': 80.0,
    'Alitas': 150.0,
    'Camarones': 200.0
  };

  bool salir = false;

  while (!salir) {
    print('\n--- Restaurante Asiático ---');
    print('1. Ver menú completo');
    print('2. Buscar un platillo');
    print('3. Cambiar precio de un platillo');
    print('4. Salir');

    stdout.write('Elige una opción (1-4): ');
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        print('\n--- Menú de platillos ---');
        mostrarMenu(menu);
        break;
      case '2':
        stdout.write('\nIntroduce el nombre del platillo que buscas: ');
        String? platillo = stdin.readLineSync();
        if (platillo != null && platillo.isNotEmpty) {
          buscarPlatillo(menu, platillo);
        } else {
          print('Entrada inválida.');
        }
        break;
      case '3':
        stdout.write(
            '\nIntroduce el nombre del platillo que deseas actualizar: ');
        String? platilloActualizar = stdin.readLineSync();
        if (platilloActualizar != null && platilloActualizar.isNotEmpty) {
          stdout
              .write('Introduce el nuevo precio para "$platilloActualizar": ');
          double? nuevoPrecio = double.tryParse(stdin.readLineSync() ?? '');
          if (nuevoPrecio != null) {
            actualizarPrecio(menu, platilloActualizar, nuevoPrecio);
          } else {
            print('Precio inválido.');
          }
        } else {
          print('Nombre inválido.');
        }
        break;
      case '4':
        print('Gracias por visitarnos. ¡Hasta pronto!');
        salir = true;
        break;
      default:
        print('Esto no esta en el menu.');
    }
  }
}

void mostrarMenu(Map<String, double> menu) {
  menu.forEach((platillo, precio) {
    print('$platillo: \$${precio.toStringAsFixed(2)}');
  });
}

void buscarPlatillo(Map<String, double> menu, String platillo) {
  if (menu.containsKey(platillo)) {
    print(
        'Platillo encontrado: $platillo, Precio: \$${menu[platillo]!.toStringAsFixed(2)}');
  } else {
    print('El platillo "$platillo" no está en el menú.');
  }
}

void actualizarPrecio(
    Map<String, double> menu, String platillo, double nuevoPrecio) {
  if (menu.containsKey(platillo)) {
    menu[platillo] = nuevoPrecio;
    print(
        'El precio de "$platillo" se actualizó a \$${nuevoPrecio.toStringAsFixed(2)}.');
  } else {
    print('El platillo "$platillo" no está disponible en el menú.');
  }
}
