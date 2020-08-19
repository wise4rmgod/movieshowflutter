

class Rating {
    double average;

    Rating({this.average});

    factory Rating.fromJson(Map<String, dynamic> json) {
        return Rating(
            average: json['average'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['average'] = this.average;
        return data;
    }
}