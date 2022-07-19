import 'package:linktsp_api/data/sku/models/sku_model.dart';

class CartValidateModel {
  CartValidateModel({
    this.validStatus,
    this.alertMessage,
    this.storeCartItems,
  });

  int? validStatus;
  String? alertMessage;
  List<StoreCartItemModel>? storeCartItems;

  factory CartValidateModel.fromJson(Map<String, dynamic> json) =>
      CartValidateModel(
        validStatus: json["validStatus"],
        alertMessage: json["alertMessage"],
        storeCartItems: json["storeCartItems"] == null
            ? []
            : List<StoreCartItemModel>.from(json["storeCartItems"]
                .map((x) => StoreCartItemModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "validStatus": validStatus,
        "alertMessage": alertMessage,
        "storeCartItems": storeCartItems == null
            ? []
            : List<dynamic>.from(storeCartItems!.map((x) => x.toJson())),
      };
}

class StoreCartItemModel {
  StoreCartItemModel({this.status, this.title, this.message});

  int? status;
  String? title;
  String? message;

  factory StoreCartItemModel.fromJson(Map<String, dynamic> json) =>
      StoreCartItemModel(
        status: json["status"],
        message: json["message"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "title": title,
      };
}
