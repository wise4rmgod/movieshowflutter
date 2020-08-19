
import 'package:movieshowflutter/model/show/Externals.dart';
import 'package:movieshowflutter/model/show/Image.dart';
import 'package:movieshowflutter/model/show/Links.dart';
import 'package:movieshowflutter/model/show/Network.dart';
import 'package:movieshowflutter/model/show/Rating.dart';
import 'package:movieshowflutter/model/show/Schedule.dart';
import 'package:movieshowflutter/model/show/WebChannel.dart';



class ShowClass {
    Links links;
    List<String> genres;
    int id;
    Image image;
    String language;
    String name;
    Network network;
    String officialSite;
    String premiered;

    int runtime;
    Schedule schedule;
    String status;
    String summary;
    String type;
    int updated;
    String url;
    WebChannel webChannel;
    int weight;

    ShowClass({this.links,  this.genres, this.id, this.image, this.language, this.name, this.network, this.officialSite, this.premiered, this.runtime, this.schedule, this.status, this.summary, this.type, this.updated, this.url, this.webChannel, this.weight});

    factory ShowClass.fromJson(Map<String, dynamic> json) {
        return ShowClass(
            links: json['links'] != null ? Links.fromJson(json['links']) : null,
            genres: json['genres'] != null ? new List<String>.from(json['genres']) : null, 
            id: json['id'], 
            image: json['image'] != null ? Image.fromJson(json['image']) : null, 
            language: json['language'], 
            name: json['name'], 
            network: json['network'] != null ? Network?.fromJson(json['network']) : null, 
            officialSite: json['officialSite'],
            premiered: json['premiered'],
            runtime: json['runtime'], 
            schedule: json['schedule'] != null ? Schedule.fromJson(json['schedule']) : null, 
            status: json['status'], 
            summary: json['summary'], 
            type: json['type'], 
            updated: json['updated'], 
            url: json['url'], 
            webChannel: json['webChannel'] != null ? WebChannel?.fromJson(json['webChannel']) : null, 
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
            data['links'] = this.links.toJson();
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

        if (this.schedule != null) {
            data['schedule'] = this.schedule.toJson();
        }
        if (this.webChannel != null) {
            data['webChannel'] = this.webChannel.toJson();
        }
        return data;
    }
}