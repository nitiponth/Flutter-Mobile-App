class Anime {
  final String animeName;
  final String character;
  final String quote;

  Anime(this.animeName, this.character, this.quote);

  Anime.fromJson(Map<String, Object> json)
      : animeName = json['anime'],
        character = json['character'],
        quote = json['quote'];

  String toString() {
    return 'name: $animeName \n';
  }
}
