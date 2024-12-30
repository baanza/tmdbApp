// ignore_for_file: non_constant_identifier_names

class DiscoverModel {
  final String name;
  final String description;
  final String CoverArtUrl;
  final double rating;
  final String releaseDate;
  final String backdropPath;
  final List genres;

  DiscoverModel({
    required this.name,
    required this.description,
    required this.CoverArtUrl,
    required this.rating,
    required this.releaseDate,
    required this.backdropPath,
    required this.genres,
  });

  factory DiscoverModel.fromJson(Map<String, dynamic> json) {
    return DiscoverModel(
      name: json['title'],
      description: json['overview'],
      CoverArtUrl: json['poster_path'],
      rating: json['vote_average'],
      releaseDate: json['release_date'],
      backdropPath: json['backdrop_path'],
      genres: json['genre_ids'],
    );
  }
}
