void main() {
  // List
  print("\n");
  print('Listas');
  List<String> frutas = ['Manzana', 'Plátano', 'Cereza'];
  frutas.add('Uva');
  frutas.remove('Plátano');
  frutas.removeAt(1);
  frutas.insert(0, 'Pera');
  frutas[1] = 'Fresa';
  print('Frutas: $frutas');
  print('Primera fruta: ${frutas.first}');
  print('Última fruta: ${frutas.last}\n');

  // Set
  print('Operaciones con Conjuntos (Set)');
  Set<String> colores = {'Rojo', 'Verde', 'Azul', 'Amarillo'};
  colores.add('Naranja');
  colores.remove('Verde');
  colores.addAll({'Negro', 'Blanco'});
  print('Colores disponibles: $colores');
  print('¿Contiene Azul?: ${colores.contains('Azul')}');
  print('Tamaño del conjunto de colores: ${colores.length}\n');

  // Map
  print('Operaciones con Map');
  Map<String, double> preciosProductos = {
    'Laptop': 950.0,
    'Teléfono': 500.0,
    'Auriculares': 100.0
  };
  preciosProductos['Tablet'] = 300.0;
  preciosProductos['Teléfono'] = 450.0;
  preciosProductos.remove('Laptop');
  preciosProductos.forEach((producto, precio) {
    print('El producto $producto cuesta \$${precio.toStringAsFixed(2)}');
  });
  print('Productos disponibles: ${preciosProductos.keys}');
  print('Precios de productos: ${preciosProductos.values}');
  print('¿Contiene Tablet?: ${preciosProductos.containsKey('Tablet')}');
}
