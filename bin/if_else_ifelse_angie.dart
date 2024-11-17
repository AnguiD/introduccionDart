void main() {
  // If
  print('Calificacion');
  int numero = 8;
  if (numero > 7) {
    print('El número $numero es mayor que 7. Calificacion aprobatoria.');
  }
  print('');

  // If-Else
  int numero2 = -3;
  print('Numero positivo o negativo');
  if (numero2 > 0) {
    print('El número $numero2 es positivo.');
  } else {
    print('El número $numero2 es negativo.');
  }
  print('');

  // Switch
  String bebida = 'Café';
  print('Elige una bebida ---');
  switch (bebida) {
    case 'Café':
      print('Has elegido un café.');
      break;
    case 'Té':
      print('Has elegido un té.');
      break;
    case 'Jugo':
      print('Has elegido un jugo.');
      break;
    default:
      print('Bebida no disponible.');
  }
  print('');
}
