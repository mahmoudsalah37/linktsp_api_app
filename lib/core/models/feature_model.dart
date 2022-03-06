class Feature {
  Feature({
    this.name,
    this.value,
    this.imageUrl,
    this.values,
  });

  String? name;
  String? value;
  String? imageUrl;
  List<FeatureValue>? values;

  factory Feature.fromJson(Map<String, dynamic> json) => Feature(
        name: json["name"],
        value: json["value"],
        imageUrl: json["imageURL"],
        values: json["values"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
        "imageURL": imageUrl,
        "values": values,
      };
}

class FeatureValue {
  FeatureValue({
    this.id,
    this.iDs,
    this.name,
    this.featureID,
  });
  int? id;
  dynamic iDs;
  String? name;
  int? featureID;

  factory FeatureValue.fromJson(Map<String, dynamic> json) => FeatureValue(
        id: json["id"],
        iDs: json["iDs"],
        name: json["name"],
        featureID: json["imageURL"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "iDs": iDs,
        "name": name,
        "featureID": featureID,
      };
}
