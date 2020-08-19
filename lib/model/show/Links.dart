

import 'package:movieshowflutter/model/show/Previousepisode.dart';
import 'package:movieshowflutter/model/show/Self.dart';

class Links {
    Previousepisode previousepisode;
    Self self;

    Links({this.previousepisode, this.self});

    factory Links.fromJson(Map<String, dynamic> json) {
        return Links(
            previousepisode: json['previousepisode'] != null ? Previousepisode.fromJson(json['previousepisode']) : null, 
            self: json['self'] != null ? Self.fromJson(json['self']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.previousepisode != null) {
            data['previousepisode'] = this.previousepisode.toJson();
        }
        if (this.self != null) {
            data['self'] = this.self.toJson();
        }
        return data;
    }
}