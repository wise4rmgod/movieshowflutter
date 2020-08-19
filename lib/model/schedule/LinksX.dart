

import 'package:movieshowflutter/model/schedule/SelfX.dart';

class LinksX {
    SelfX self;

    LinksX({this.self});

    factory LinksX.fromJson(Map<String, dynamic> json) {
        return LinksX(
            self: json['self'] != null ? SelfX.fromJson(json['self']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.self != null) {
            data['self'] = this.self.toJson();
        }
        return data;
    }
}