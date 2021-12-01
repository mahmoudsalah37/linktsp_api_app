import 'cart_item_model.dart';
import 'config_delivery_period_model.dart';
import 'summary_model.dart';

class CartSummaryModel {
  CartSummaryModel({
    this.items,
    this.summary,
    this.configDeliveryPeriod,
    this.enablePickAtStore,
  });

  List<CartItemModel>? items;
  List<Summary>? summary;
  ConfigDeliveryPeriod? configDeliveryPeriod;
  bool? enablePickAtStore;

  factory CartSummaryModel.fromJson(Map<String, dynamic> json) =>
      CartSummaryModel(
        items: json["items"] == null
            ? null
            : List<CartItemModel>.from(
                json["items"].map((x) => CartItemModel.fromJson(x))),
        summary: json["summary"] == null
            ? null
            : List<Summary>.from(
                json["summary"].map((x) => Summary.fromJson(x))),
        configDeliveryPeriod: json["configDeliveryPeriod"] == null
            ? null
            : ConfigDeliveryPeriod.fromJson(json["configDeliveryPeriod"]),
        enablePickAtStore: json["enablePickAtStore"],
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "summary": summary == null
            ? null
            : List<dynamic>.from(summary!.map((x) => x.toJson())),
        "configDeliveryPeriod": configDeliveryPeriod == null
            ? null
            : configDeliveryPeriod!.toJson(),
        "enablePickAtStore": enablePickAtStore,
      };
}
