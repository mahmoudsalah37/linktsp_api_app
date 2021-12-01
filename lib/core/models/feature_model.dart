class Feature {
  Feature({
    this.name,
    this.value,
    this.imageUrl,
  });

  String? name;
  String? value;
  String? imageUrl;

  factory Feature.fromJson(Map<String, dynamic> json) => Feature(
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
