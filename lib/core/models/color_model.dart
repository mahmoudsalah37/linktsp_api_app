class ColorModel {
  ColorModel({
    this.id,
    this.name,
    this.title,
    this.hexa,
    this.isOutOfStock,
  });

  int? id;
  String? name;
  String? title;
  String? hexa;
  bool? isOutOfStock;

  factory ColorModel.fromJson(Map<String, dynamic> json) => ColorModel(
        id: json["id"],
        name: json["name"],
        title: json["title"],
        hexa: json["hexa"],
        isOutOfStock: json["isOutOfStock"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "title": title,
        "hexa": hexa,
        "isOutOfStock": isOutOfStock,
      };
}
