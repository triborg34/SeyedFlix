class FakeMovieApi {
  String? title;
  String? year;
  String? runtime;
  String? poster;

  FakeMovieApi({this.title, this.year, this.runtime, this.poster});

  FakeMovieApi.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    year = json['Year'];
    runtime = json['Runtime'];
    poster = json['Poster'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this.title;
    data['Year'] = this.year;
    data['Runtime'] = this.runtime;
    data['Poster'] = this.poster;
    return data;
  }
}