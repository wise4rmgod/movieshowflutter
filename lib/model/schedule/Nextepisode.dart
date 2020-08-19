

class Nextepisode {
    String href;

    Nextepisode({this.href});

    factory Nextepisode.fromJson(Map<String, dynamic> json) {
        return Nextepisode(
            href: json['href'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['href'] = this.href;
        return data;
    }
}