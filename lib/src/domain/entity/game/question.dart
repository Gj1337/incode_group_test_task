abstract class Question<T> {
  Question({
    required this.possibleVariants,
    required this.attempts,
    required this.guessed,
  });

  final List<T> possibleVariants;
  final int attempts;
  final bool guessed;
}
