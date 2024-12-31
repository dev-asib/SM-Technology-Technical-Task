class MovieModel {
  String thumbnail;
  String title;

  MovieModel(
    this.thumbnail,
    this.title,
  );

  MovieModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumbnail = json['thumbnail'];
}
