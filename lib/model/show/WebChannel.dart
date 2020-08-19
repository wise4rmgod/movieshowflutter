

import 'package:movieshowflutter/model/show/CountryX.dart';

class WebChannel {
    CountryX country;
    int id;
    String name;

    WebChannel({this.country, this.id, this.name});

    factory WebChannel.fromJson(Map<String, dynamic> json) {
        return WebChannel(
            country: json['country'] != null ? CountryX.fromJson(json['country']) : null, 
            id: json['id'], 
            name: json['name'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        if (this.country != null) {
            data['country'] = this.country.toJson();
        }
        return data;
    }
}