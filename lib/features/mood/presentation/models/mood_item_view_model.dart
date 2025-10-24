class MoodItemViewModel {
  const MoodItemViewModel({
    required this.name,
    required this.rating,
    required this.imagePath,
    this.isSelected = false,
  });

  final String name;
  final int rating;
  final String imagePath;
  final bool isSelected;
}
