class Size {
  Size({this.id, this.name, this.isOutOfStock, this.skuId});

  int? id;
  String? name;
  bool? isOutOfStock;
  int? skuId;

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        id: json["id"],
        name: json["name"],
        isOutOfStock: json["isOutOfStock"],
        skuId: int.tryParse(json["skuId"].toString()),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "isOutOfStock": isOutOfStock,
        "skuId": skuId,
      };
}
