

import 'package:movieshowflutter/model/schedule/Show.dart';

class Embedded {
    Show show;

    Embedded({this.show});

    factory Embedded.fromJson(Map<String, dynamic> json) {
        return Embedded(
            show: json['show'] != null ? Show.fromJson(json['show']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.show != null) {
            data['show'] = this.show.toJson();
        }
        return data;
    }
}