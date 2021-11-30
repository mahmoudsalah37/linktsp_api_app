class ExceptionApi implements Exception {
  final int? code;
  final String? message;

  ExceptionApi({required this.code, required this.message});
}
