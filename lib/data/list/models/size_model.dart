class Size {
  Size({
    this.id,
    this.name,
    this.isOutOfStock,
  });

  int? id;
  String? name;
  bool? isOutOfStock;

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        id: json["id"],
        name: json["name"],
        isOutOfStock: json["isOutOfStock"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "isOutOfStock": isOutOfStock,
      };
}
