

class ImageX {
    String medium;
    String original;

    ImageX({this.medium, this.original});

    factory ImageX.fromJson(Map<String, dynamic> json) {
        return ImageX(
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