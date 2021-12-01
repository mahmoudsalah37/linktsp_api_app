class CartSkuModel {
  CartSkuModel({
    required this.skuid,
    required this.qty,
  });

  int? skuid;
  int? qty;

  factory CartSkuModel.fromJson(Map<String, dynamic> json) => CartSkuModel(
        skuid: json["skuid"],
        qty: json["qty"],
      );

  Map<String, dynamic> toJson() => {"skuid": skuid, "qty": qty};
}
