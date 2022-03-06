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
    this.name,
    this.value,
    this.imageUrl,
  });

  String? name;
  String? value;
  String? imageUrl;

  factory FeatureValue.fromJson(Map<String, dynamic> json) => FeatureValue(
        name: json["name"],
        value: json["value"],
        imageUrl: json["imageURL"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
        "imageURL": imageUrl,
      };
}
