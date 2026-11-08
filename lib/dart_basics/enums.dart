// Exemplo 1: enum simples
enum TrafficLight { red, yellow, green }

// Exemplo 2: enum com propriedades e construtor
enum CourseLevel {
  beginner(label: 'Iniciante', weeks: 4),
  intermediate(label: 'Intermédio', weeks: 6),
  advanced(label: 'Avançado', weeks: 8);

  const CourseLevel({required this.label, required this.weeks});
  final String label;
  final int weeks;
}

// Exemplo 3: métodos dentro do enum
enum HttpStatus {
  ok(200),
  created(201),
  badRequest(400),
  notFound(404),
  serverError(500);

  const HttpStatus(this.code);
  final int code;

  bool get isSuccess => code >= 200 && code < 300;
  bool get isClientError => code >= 400 && code < 500;
  bool get isServerError => code >= 500;
  String describe() => 'HTTP $code (${name.toUpperCase()})';
}
