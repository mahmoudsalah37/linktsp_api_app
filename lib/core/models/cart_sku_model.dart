import 'package:linktsp_api/data/sku/models/inner_product/inner_product_model.dart';

class CartSkuModel {
  CartSkuModel({
    required this.skuid,
    required this.qty,
    this.id,
    this.skuExtras = const <ExtraDto>[],
    this.skuOptions = const <ExtraDto>[],
  });
  int? skuid;
  int? id;

  int? qty;
  List<ExtraDto> skuExtras;
  List<ExtraDto> skuOptions;

  factory CartSkuModel.fromJson(Map<String, dynamic> json) => CartSkuModel(
        skuid: json["skuid"],
        qty: json["qty"],
        id: json["id"],
        skuExtras: List<ExtraDto>.from(
            json["skuExtras"].map((x) => ExtraDto.fromJson(x))),
        skuOptions: List<ExtraDto>.from(
            json["skuOptions"].map((x) => ExtraDto.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "skuid": skuid,
        "qty": qty,
        "id": id,
        "skuExtras": List<dynamic>.from(skuExtras.map((x) => x.toJson())),
        "skuOptions": List<dynamic>.from(skuOptions.map((x) => x.toJson())),
      };
}



class DemoCartSkuModel {
  DemoCartSkuModel({
    required this.skuid,
    required this.qty,
    
  });
  int? skuid;
  int? qty;
  

  factory DemoCartSkuModel.fromJson(Map<String, dynamic> json) => DemoCartSkuModel(
        skuid: json["skuid"],
        qty: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "skuid": skuid,
        "quantity": qty,
      };
}
