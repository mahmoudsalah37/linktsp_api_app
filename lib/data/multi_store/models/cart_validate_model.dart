class CartValidateModel {
  CartValidateModel({
    this.validStatus,
    this.alertMessage,
    this.storeCartItems,
  });

  int? validStatus;
  String? alertMessage;
  List<dynamic>? storeCartItems;

  factory CartValidateModel.fromJson(Map<String, dynamic> json) =>
      CartValidateModel(
        validStatus: json["validStatus"],
        alertMessage: json["alertMessage"],
        storeCartItems: json["storeCartItems"] == null
            ? null
            : List<dynamic>.from(json["storeCartItems"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "validStatus": validStatus,
        "alertMessage": alertMessage,
        "storeCartItems": storeCartItems == null
            ? null
            : List<dynamic>.from(storeCartItems!.map((x) => x)),
      };
}
