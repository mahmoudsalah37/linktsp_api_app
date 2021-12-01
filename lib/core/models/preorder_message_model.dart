import 'cart_item_model.dart';

class PreOrderMessageModel {
  PreOrderMessageModel({
    this.message,
    this.cartItems,
  });

  String? message;
  List<CartItemModel>? cartItems;

  factory PreOrderMessageModel.fromJson(Map<String, dynamic> json) =>
      PreOrderMessageModel(
        message: json["message"],
        cartItems: json["cartItems"] == null
            ? null
            : List<CartItemModel>.from(
                json["cartItems"].map((x) => CartItemModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "cartItems": cartItems == null
            ? null
            : List<dynamic>.from(cartItems!.map((x) => x.toJson())),
      };
}
