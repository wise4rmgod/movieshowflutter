
class Country {
    String code;
    String name;
    String timezone;

    Country({this.code, this.name, this.timezone});

    factory Country.fromJson(Map<String, dynamic> json) {
        return Country(
            code: json['code'], 
            name: json['name'], 
            timezone: json['timezone'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['name'] = this.name;
        data['timezone'] = this.timezone;
        return data;
    }
}