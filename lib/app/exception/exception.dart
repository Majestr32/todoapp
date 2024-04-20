class AppException implements Exception{
  final String message;
  final Exception? source;

  const AppException({
    required this.message,
    this.source,
  });
}