class StoreFilterModel {
  StoreFilterModel({
    this.latitude,
    this.longitude,
    this.cityId,
    this.distance,
  });

  double? latitude;
  double? longitude;
  int? cityId;
  int? distance;

  factory StoreFilterModel.fromJson(Map<String, dynamic> json) =>
      StoreFilterModel(
        latitude: json["latitude"],
        longitude: json["longitude"],
        cityId: json["cityID"],
        distance: json["distance"],
      );

  Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
        "cityID": cityId,
        "distance": distance,
      };
}

class StoreModel {
  StoreModel({
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

  factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
        id: json["id"],
        name: json["name"],
        latitude:
            json["latitude"] == null ? null : json["latitude"]!.toDouble(),
        longitude:
            json["longitude"] == null ? null : json["longitude"]!.toDouble(),
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
