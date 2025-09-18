class MovieFromApi {
  final int id;
  final String title;
  final String posterPath;
  final String overview;
  final List<int> genreids;

  MovieFromApi({
    required this.id,
    required this.title,
    required this.posterPath,
    required this.overview,
    required this.genreids,
  });

  factory MovieFromApi.fromJson(Map<String, dynamic> json) {
    return MovieFromApi(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      posterPath: json['poster_path'] ?? '',
      overview: json['overview'] ?? '',
      genreids: List<int>.from(json['genere_ids'] ?? []),
    );
  }
  // factory MovieFromApi.fromDb(Map<String, dynamic> dbJson) {
  //   return MovieFromApi(
  //     id: dbJson['id'],
  //     title: dbJson['title'],
  //     posterPath: dbJson['posterPath'],
  //     overview: dbJson['overview'],
  //     genreids: [],
  //   );
  // }
}
