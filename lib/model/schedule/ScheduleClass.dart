import 'package:movieshowflutter/model/schedule/Embedded.dart';
import 'package:movieshowflutter/model/schedule/Image.dart';
import 'package:movieshowflutter/model/schedule/Links.dart';

class ScheduleClass {
    Embedded embedded;
    Links links;
    String airdate;
    String airstamp;
    String airtime;
    int id;
    Image image;
    String name;
    int number;
    int runtime;
    int season;
    String summary;
    String url;

    ScheduleClass({this.embedded, this.links, this.airdate, this.airstamp, this.airtime, this.id, this.image, this.name, this.number, this.runtime, this.season, this.summary, this.url});

    factory ScheduleClass.fromJson(Map<String, dynamic> json) {
        return ScheduleClass(
            embedded: json['embedded'] != null ? Embedded.fromJson(json['embedded']) : null,
            links: json['links'] != null ? Links.fromJson(json['links']) : null,
            airdate: json['airdate'],
            airstamp: json['airstamp'],
            airtime: json['airtime'],
            id: json['id'],
            image: json['image'] != null ? Image?.fromJson(json['image']) : null,
            name: json['name'],
            number: json['number'],
            runtime: json['runtime'],
            season: json['season'],
            summary: json['summary'],
            url: json['url'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['airdate'] = this.airdate;
        data['airstamp'] = this.airstamp;
        data['airtime'] = this.airtime;
        data['id'] = this.id;
        data['name'] = this.name;
        data['season'] = this.season;
        data['url'] = this.url;
        if (this.embedded != null) {
            data['_embedded'] = this.embedded.toJson();
        }
        if (this.links != null) {
            data['_links'] = this.links.toJson();
        }
        if (this.image != null) {
            data['image'] = this.image.toJson();
        }
        return data;
    }
}