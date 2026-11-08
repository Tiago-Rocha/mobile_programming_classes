// Mesmos argumentos em estilos diferentes: posicional opcional, nomeado opcional e nomeado required.
void main() {
  print(descricaoPosicionalOpcional('Dart Basics'));
  print(descricaoPosicionalOpcional('Dart Basics', 'Lab 1', 'Avançada'));

  print(descricaoNomeadaOpcional('Flutter Widgets'));
  print(descricaoNomeadaOpcional('Flutter Widgets', sala: 'Lab 2'));

  print(
    descricaoNomeadaObrigatoria(
      'Streams',
      sala: 'Remoto',
      intensidade: 'Intermédia',
    ),
  );
}

String descricaoPosicionalOpcional(
  String tema, [
  String sala = 'Sala padrão',
  String intensidade = 'Intro',
]) {
  return 'Posicional opcional -> Tema: $tema | Sala: $sala | Intensidade: $intensidade';
}

String descricaoNomeadaOpcional(
  String tema, {
  String? sala,
  String intensidade = 'Intro',
}) {
  final salaEscolhida = sala ?? 'Por definir';
  return 'Nomeado opcional -> Tema: $tema | Sala: $salaEscolhida | Intensidade: $intensidade';
}

String descricaoNomeadaObrigatoria(
  String tema, {
  required String sala,
  required String intensidade,
}) {
  return 'Nomeado required -> Tema: $tema | Sala: $sala | Intensidade: $intensidade';
}
