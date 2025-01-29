extension StringExtensions on String {
  String? nullIfEmpty() => isNotEmpty ? this : null;
}
