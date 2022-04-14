import 'package:linktsp_api/data/sku/models/inner_product/inner_product_model.dart';

class CartSkuModel {
  CartSkuModel({
    required this.skuid,
    required this.qty,
    this.id,
    this.skuExtras = const <ExtraDto>[],
  });
  int? skuid;
  int? id;

  int? qty;
  List<ExtraDto> skuExtras;

  factory CartSkuModel.fromJson(Map<String, dynamic> json) => CartSkuModel(
      skuid: json["skuid"],
      qty: json["qty"],
      id: json["id"],
      skuExtras: List<ExtraDto>.from(
          json["skuExtras"].map((x) => ExtraDto.fromJson(x))));

  Map<String, dynamic> toJson() => {
        "skuid": skuid,
        "qty": qty,
        "id": id,
        "skuExtras": List<dynamic>.from(skuExtras.map((x) => x.toJson())),
      };
}
