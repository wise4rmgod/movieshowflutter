import 'package:movieshowflutter/model/schedule/Externals.dart';
import 'package:movieshowflutter/model/schedule/Image.dart';
import 'package:movieshowflutter/model/schedule/ImageX.dart';
import 'package:movieshowflutter/model/schedule/Links.dart';
import 'package:movieshowflutter/model/schedule/Network.dart';
import 'package:movieshowflutter/model/schedule/Rating.dart';
import 'package:movieshowflutter/model/schedule/Schedule.dart';

class Show {
    Links links;
    Externals externals;
    int id;
    Image image;
    String language;
    String name;
    Network network;
    String officialSite;
    String premiered;
    Rating rating;
    int runtime;
    Schedule schedule;
    String status;
    String summary;
    String type;
    int updated;
    String url;
    int weight;

    Show({this.links, this.externals, this.id, this.image, this.language, this.name, this.network, this.officialSite, this.premiered, this.rating, this.runtime, this.schedule, this.status, this.summary, this.type, this.updated, this.url, this.weight});

    factory Show.fromJson(Map<String, dynamic> json) {
        return Show(
            links: json['links'] != null ? Links.fromJson(json['links']) : null,
            id: json['id'], 
            image: json['image'] != null ? Image.fromJson(json['image']) : null,
            language: json['language'], 
            name: json['name'], 
            network: json['network'] != null ? Network.fromJson(json['network']) : null, 
            officialSite: json['officialSite'], 
            premiered: json['premiered'],
            runtime: json['runtime'], 
            schedule: json['schedule'] != null ? Schedule.fromJson(json['schedule']) : null, 
            status: json['status'], 
            summary: json['summary'], 
            type: json['type'], 
            updated: json['updated'], 
            url: json['url'],
            weight: json['weight'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['language'] = this.language;
        data['name'] = this.name;
        data['officialSite'] = this.officialSite;
        data['premiered'] = this.premiered;
        data['runtime'] = this.runtime;
        data['status'] = this.status;
        data['summary'] = this.summary;
        data['type'] = this.type;
        data['updated'] = this.updated;
        data['url'] = this.url;
        data['weight'] = this.weight;
        if (this.links != null) {
            data['_links'] = this.links.toJson();
        }
        if (this.image != null) {
            data['image'] = this.image.toJson();
        }
        if (this.network != null) {
            data['network'] = this.network.toJson();
        }
        if (this.schedule != null) {
            data['schedule'] = this.schedule.toJson();
        }
        return data;
    }
}