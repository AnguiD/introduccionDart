void main() {
  // For
  print('--- Numero Par Ciclo For ---');
  List<int> numeros = [1, 3, 5, 7, 8, 10, 12];
  for (int i = 0; i < numeros.length; i++) {
    print('Revisando número: ${numeros[i]}');
    if (numeros[i] % 2 == 0) {
      print('¡Número par ${numeros[i]} encontrado! Deteniendo la búsqueda.');
      break;
    }
  }
  print('');

  // While
  print('--- Busqueda alumno con ciclo While ---');
  List<String> ubicaciones = ['Diego', 'Ros', 'Griss', 'Chucho', 'Angie'];
  int contador = 0;
  bool tesoroEncontrado = false;
  while (contador < ubicaciones.length && !tesoroEncontrado) {
    print('Buscando en ${ubicaciones[contador]}...');
    if (ubicaciones[contador] == 'Angie') {
      print('La alumna Angie fue encontrada');
      tesoroEncontrado = true;
    }
    contador++;
  }
  print('');

  // Do-While
  print('--- Temperatura con ciclo Do-While ---');
  int temperatura = 9;
  do {
    print('Temperatura actual: $temperatura°C');
    temperatura++;
  } while (temperatura < 18);
  print('¡La temperatura es lo suficientemente alta para salir!\n');

  // Break
  print('--- Buscar ciudad con uso de break ---');
  List<String> ciudades = [
    'Guadalajara',
    'CDMX',
    'Monterrey',
    'Morelia',
    'Acapulco'
  ];
  for (String ciudad in ciudades) {
    print('Revisando ciudad: $ciudad');
    if (ciudad == 'Morelia') {
      print('¡Ciudad de Morelia encontrada! Deteniendo la búsqueda.');
      break;
    }
  }
  print('');
}
