

import 'package:movieshowflutter/model/schedule/Country.dart';

class Network {
    Country country;
    int id;
    String name;

    Network({this.country, this.id, this.name});

    factory Network.fromJson(Map<String, dynamic> json) {
        return Network(
            country: json['country'] != null ? Country.fromJson(json['country']) : null, 
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