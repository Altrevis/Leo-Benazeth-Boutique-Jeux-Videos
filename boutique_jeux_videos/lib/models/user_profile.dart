class UserProfile {
  final String firstName;
  final String lastName;
  final int age;
  final String avatarUrl;
  final bool isPremium;
  final List<String> favoriteGenres;

  const UserProfile({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.avatarUrl,
    required this.isPremium,
    required this.favoriteGenres,
  });

  String get fullName => '$firstName $lastName';
}
