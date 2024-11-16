void main() {
  // --- For: NUMERO PAR
  print('--- For: Buscando un número par ---');
  List<int> numeros = [1, 3, 5, 7, 8, 10, 12];
  for (int i = 0; i < numeros.length; i++) {
    print('Revisando número: ${numeros[i]}');
    if (numeros[i] % 2 == 0) {
      // Buscar el primer número par
      print('¡Número par ${numeros[i]} encontrado! Deteniendo la búsqueda.');
      break;
    }
  }
  print('');

  // --- While:BUSCAR TESORO
  print('--- While: Buscando un tesoro ---');
  List<String> ubicaciones = ['Bosque', 'Montaña', 'Valle', 'Río', 'Cueva'];
  int contador = 0;
  bool tesoroEncontrado = false;
  while (contador < ubicaciones.length && !tesoroEncontrado) {
    print('Buscando en ${ubicaciones[contador]}...');
    if (ubicaciones[contador] == 'Cueva') {
      print('¡Tesoro encontrado en la Cueva!');
      tesoroEncontrado = true;
    }
    contador++;
  }
  print('');

  // --- Do-While: CLIMA
  print('--- Do-While: Verificando el clima ---');
  int temperatura = 10;
  do {
    print('Temperatura actual: $temperatura°C');
    temperatura++;
  } while (temperatura < 15);
  print('¡La temperatura es lo suficientemente alta para salir!\n');

  // --- Break: BUSCAR CIUDAD
  print('--- Break: Buscando una ciudad específica ---');
  List<String> ciudades = [
    'Madrid',
    'Barcelona',
    'Valencia',
    'Sevilla',
    'Bilbao'
  ];
  for (String ciudad in ciudades) {
    print('Revisando ciudad: $ciudad');
    if (ciudad == 'Sevilla') {
      print('¡Ciudad Sevilla encontrada! Deteniendo la búsqueda.');
      break;
    }
  }
  print('');
}
