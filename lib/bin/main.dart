/// Demonstração simples de atribuição de variáveis para a pergunta 1.

void runVariableAssignmentDemo() {
  print('--- Atribuição de variáveis ---');

  int x = 3;
  int y = x;
  print(y);
  y = 5;
  print(y);
}

void nullAssertionDemo() {
  print('--- Demo: Operador de asserção nula ---');

  int? a;
  a = 10;
  print(a!);
}

void nullOperatorsDemo() {
  print('--- Demo: Operadores nulos ---');

  String? nome;
  String nomeFinal = nome ?? 'Visitante';
  print('Olá, $nomeFinal!');
}

void repeatedValues() {
  print('--- Demo: Valores repetidos ---');

  final List<int> lista = [1, 2, 2, 3, 3, 3];
  final Set<int> listSet = {1, 2, 2, 3, 3, 3};
  final Map<String, String> mapa = {
    'key1': 'um',
    'key2': 'dois',
    'key2': 'dois repetido',
  };
  print('Lista: $lista');
  print('Set: $listSet');
  print('Mapa: $mapa');
}

void main() {
  runVariableAssignmentDemo();
  nullAssertionDemo();
  nullOperatorsDemo();
  repeatedValues();
}
