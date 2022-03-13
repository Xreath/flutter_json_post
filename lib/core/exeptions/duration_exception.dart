class DurationException implements Exception {
  final dynamic Data;

  DurationException(this.Data);
  @override
  String toString() {
    return "Hata $Data";
  }
}
