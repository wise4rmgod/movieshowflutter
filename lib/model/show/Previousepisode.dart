

class Previousepisode {
    String href;

    Previousepisode({this.href});

    factory Previousepisode.fromJson(Map<String, dynamic> json) {
        return Previousepisode(
            href: json['href'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['href'] = this.href;
        return data;
    }
}