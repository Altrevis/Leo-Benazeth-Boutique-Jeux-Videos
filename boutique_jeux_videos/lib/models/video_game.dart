class VideoGame {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final String genre;
  final double? price;

  const VideoGame({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.genre,
    this.price,
  });

  String get formattedPrice =>
      price == null ? 'Gratuit' : '${price!.toStringAsFixed(2)}€';
}
