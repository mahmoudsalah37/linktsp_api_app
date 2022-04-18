class Size {
  Size({this.id, this.name, this.isOutOfStock, this.skuId, this.index});

  int? id;
  String? name;
  bool? isOutOfStock;
  int? skuId;
  int? index;

  factory Size.fromJson(Map<String, dynamic> json) => Size(
        id: json["id"],
        index: json["index"],
        name: json["name"],
        isOutOfStock: json["isOutOfStock"],
        skuId: int.tryParse(json["skuId"].toString()),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "index": index,
        "name": name,
        "isOutOfStock": isOutOfStock,
        "skuId": skuId,
      };
}
