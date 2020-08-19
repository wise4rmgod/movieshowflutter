
import 'package:movieshowflutter/model/search/Show.dart';

class Search {
    double score;
    Show show;

    Search({this.score, this.show});

    factory Search.fromJson(Map<String, dynamic> json) {
        return Search(
            score: json['score'], 
            show: json['show'] != null ? Show.fromJson(json['show']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['score'] = this.score;
        if (this.show != null) {
            data['show'] = this.show.toJson();
        }
        return data;
    }
}