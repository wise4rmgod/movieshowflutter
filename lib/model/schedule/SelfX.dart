

class SelfX {
    String href;

    SelfX({this.href});

    factory SelfX.fromJson(Map<String, dynamic> json) {
        return SelfX(
            href: json['href'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['href'] = this.href;
        return data;
    }
}