class Covid{
  String? country;
  Timeline? timeline;

  Covid({
    this.country,
    this.timeline,
  });

  Covid.fromJson(Map<String , dynamic> json) {
    country = json['country'];
    timeline = json['timeline'] != null ? Timeline.fromJson(json['timeline']) : null;
  }
  Map<String , dynamic> toJson() {
final Map<String, dynamic> data = Map<String , dynamic> ();

data['country'] = country;
if(timeline != null) {
  data['timeline'] = timeline!.toJson();
}
return data;
  }
}

class Timeline {
  int? i61722;

  Timeline({
    this.i61722,
  });

  Timeline.fromJson(Map<String , dynamic> json) {
    i61722 = json['6/17/22'];
  }
  Map<String , dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic> ();
    data['6/17/22'] = i61722;
     return data;

  }
 


}