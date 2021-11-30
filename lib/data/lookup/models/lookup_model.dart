class CityModel {
  const CityModel({
    this.id,
    this.name,
  });

  final int? id;
  final String? name;

  factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
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

class ComplaintLookupModel {
  ComplaintLookupModel({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory ComplaintLookupModel.fromJson(Map<String, dynamic> json) =>
      ComplaintLookupModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class CancelReasonLookupModel {
  CancelReasonLookupModel({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory CancelReasonLookupModel.fromJson(Map<String, dynamic> json) =>
      CancelReasonLookupModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class FeedbackReasonsLookupModel {
  FeedbackReasonsLookupModel({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory FeedbackReasonsLookupModel.fromJson(Map<String, dynamic> json) =>
      FeedbackReasonsLookupModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
