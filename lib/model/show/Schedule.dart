

class Schedule {
    List<String> days;
    String time;

    Schedule({this.days, this.time});

    factory Schedule.fromJson(Map<String, dynamic> json) {
        return Schedule(
            days: json['days'] != null ? new List<String>.from(json['days']) : null, 
            time: json['time'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['time'] = this.time;
        if (this.days != null) {
            data['days'] = this.days;
        }
        return data;
    }
}