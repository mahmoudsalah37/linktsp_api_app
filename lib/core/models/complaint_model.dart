class ComplaintModel {
  ComplaintModel({
    this.complaintReasonId,
    this.customerId,
    this.orderId,
    this.content,
    this.zoneId,
  });

  int? complaintReasonId;
  int? customerId;
  int? orderId;
  String? content;
  int? zoneId;

  factory ComplaintModel.fromJson(Map<String, dynamic> json) => ComplaintModel(
        complaintReasonId: json["complaintReasonID"],
        customerId: json["customerID"],
        orderId: json["orderID"],
        content: json["content"],
        zoneId: json["zoneID"],
      );

  Map<String, dynamic> toJson() => {
        "complaintReasonID": complaintReasonId,
        "customerID": customerId,
        "orderID": orderId,
        "content": content,
        "zoneID": zoneId,
      };
}
