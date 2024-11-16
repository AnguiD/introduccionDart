void main() {
  // --- If: Verificar si un número es mayor que 10 ---
  print('--- If: Verificar si un número es mayor que 10 ---');
  int numero = 15;
  if (numero > 10) {
    print('El número $numero es mayor que 10.');
  }
  print('');

  // --- If-Else: VER SI UN NUMERO ES NEGATIVO---
  int numero2 = -3;
  print('--- If-Else: Verificar si un número es positivo o negativo ---');
  if (numero2 > 0) {
    print('El número $numero2 es positivo.');
  } else {
    print('El número $numero2 es negativo.');
  }
  print('');

  // --- Switch: ELEGIR UNA BEBIDA ---
  String bebida = 'Café';
  print('--- Switch: Elegir una bebida ---');
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
