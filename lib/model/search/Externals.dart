

class Externals {
    String imdb;
    int thetvdb;
    int tvrage;

    Externals({this.imdb, this.thetvdb, this.tvrage});

    factory Externals.fromJson(Map<String, dynamic> json) {
        return Externals(
            imdb: json['imdb'], 
            thetvdb: json['thetvdb'], 
            tvrage: json['tvrage'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['imdb'] = this.imdb;
        data['thetvdb'] = this.thetvdb;
        data['tvrage'] = this.tvrage;
        return data;
    }
}