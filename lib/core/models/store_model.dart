
class Store {
  Store({
    this.id,
    this.name,
    this.latitude,
    this.longitude,
    this.description,
    this.mobile,
    this.telephone,
  });

  int? id;
  String? name;
  double? latitude;
  double? longitude;
  String? description;
  String? mobile;
  String? telephone;

  factory Store.fromJson(Map<String, dynamic> json) => Store(
        id: json["id"],
        name: json["name"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        description: json["description"],
        mobile: json["mobile"],
        telephone: json["telephone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "latitude": latitude,
        "longitude": longitude,
        "description": description,
        "mobile": mobile,
        "telephone": telephone,
      };
}
