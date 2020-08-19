

class Image {
    String medium;
    String original;

    Image({this.medium, this.original});

    factory Image.fromJson(Map<String, dynamic> json) {
        return Image(
            medium: json['medium'], 
            original: json['original'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['medium'] = this.medium;
        data['original'] = this.original;
        return data;
    }
}