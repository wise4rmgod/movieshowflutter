

import 'package:movieshowflutter/model/schedule/Nextepisode.dart';
import 'package:movieshowflutter/model/schedule/Previousepisode.dart';
import 'package:movieshowflutter/model/schedule/Self.dart';

class Links {
    Nextepisode nextepisode;
    Previousepisode previousepisode;
    Self self;

    Links({this.nextepisode, this.previousepisode, this.self});

    factory Links.fromJson(Map<String, dynamic> json) {
        return Links(
            nextepisode: json['nextepisode'] != null ? Nextepisode.fromJson(json['nextepisode']) : null, 
            previousepisode: json['previousepisode'] != null ? Previousepisode.fromJson(json['previousepisode']) : null, 
            self: json['self'] != null ? Self.fromJson(json['self']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.nextepisode != null) {
            data['nextepisode'] = this.nextepisode.toJson();
        }
        if (this.previousepisode != null) {
            data['previousepisode'] = this.previousepisode.toJson();
        }
        if (this.self != null) {
            data['self'] = this.self.toJson();
        }
        return data;
    }
}