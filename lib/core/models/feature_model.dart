import '../../data/list/models/list_model.dart';

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
        values: json["values"] == null
            ? json["values"]
            : List<FeatureValue>.from(
                json["values"].map(
                  (x) => FeatureValue.fromJson(x),
                ),
              ),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "value": value,
        "imageURL": imageUrl,
        "values": values ?? List<dynamic>.from(values!.map((x) => x.toJson()))
      };
}
