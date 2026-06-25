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

  factory VideoGame.fromJson(Map<String, dynamic> json) {
    return VideoGame(
      id: json['id'] as int,
      title: (json['title'] as String?) ?? '',
      description: (json['description'] as String?) ?? '',
      imageUrl: (json['image_url'] as String?) ?? '',
      genre: (json['genre'] as String?) ?? '',
      price: (json['price'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image_url': imageUrl,
      'genre': genre,
      'price': price,
    };
  }
}
