
import 'package:movieshowflutter/model/search/Externals.dart';
import 'package:movieshowflutter/model/search/Image.dart';
import 'package:movieshowflutter/model/search/Links.dart';
import 'package:movieshowflutter/model/search/Network.dart';
import 'package:movieshowflutter/model/search/Rating.dart';
import 'package:movieshowflutter/model/search/Schedule.dart';

class Show {
    Links links;
    Externals externals;
    List<String> genres;
    int id;
    Image image;
    String language;
    String name;
    Network network;
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

    Show({this.links, this.externals, this.genres, this.id, this.image, this.language, this.name, this.network, this.premiered, this.rating, this.runtime, this.schedule, this.status, this.summary, this.type, this.updated, this.url, this.weight});

    factory Show.fromJson(Map<String, dynamic> json) {
        return Show(
            links: json['links'] != null ? Links.fromJson(json['links']) : null,
            externals: json['externals'] != null ? Externals.fromJson(json['externals']) : null, 
            genres: json['genres'] != null ? new List<String>.from(json['genres']) : null, 
            id: json['id'], 
            image: json['image'] != null ? Image.fromJson(json['image']) : null, 
            language: json['language'], 
            name: json['name'], 
            network: json['network'] != null ? Network.fromJson(json['network']) : null,
            premiered: json['premiered'], 
            rating: json['rating'] != null ? Rating.fromJson(json['rating']) : null, 
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
        if (this.externals != null) {
            data['externals'] = this.externals.toJson();
        }
        if (this.genres != null) {
            data['genres'] = this.genres;
        }
        if (this.image != null) {
            data['image'] = this.image.toJson();
        }
        if (this.network != null) {
            data['network'] = this.network.toJson();
        }

        if (this.rating != null) {
            data['rating'] = this.rating.toJson();
        }
        if (this.schedule != null) {
            data['schedule'] = this.schedule.toJson();
        }

        return data;
    }
}