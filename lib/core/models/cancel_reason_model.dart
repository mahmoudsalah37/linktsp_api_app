class CancelReasonModel {
  CancelReasonModel({
    this.reasonId,
    this.customerId,
    this.orderId,
    this.content,
    this.zoneId,
  });

  int? reasonId;
  int? customerId;
  int? orderId;
  String? content;
  int? zoneId;

  factory CancelReasonModel.fromJson(Map<String, dynamic> json) =>
      CancelReasonModel(
        reasonId: json["reasonID"],
        customerId: json["customerID"],
        orderId: json["orderID"],
        content: json["content"],
        zoneId: json["zoneID"],
      );

  Map<String, dynamic> toJson() => {
        "reasonID": reasonId,
        "customerID": customerId,
        "orderID": orderId,
        "content": content,
        "zoneID": zoneId,
      };
}
