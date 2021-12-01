class ConfigDeliveryPeriod {
  ConfigDeliveryPeriod({
    this.min,
    this.max,
    this.unit,
    this.periodName,
    this.preOrder,
    this.availabilityDate,
    this.deliveryNote,
  });

  int? min;
  int? max;
  dynamic unit;
  String? periodName;
  bool? preOrder;
  DateTime? availabilityDate;
  String? deliveryNote;

  factory ConfigDeliveryPeriod.fromJson(Map<String, dynamic> json) =>
      ConfigDeliveryPeriod(
        min: json["min"],
        max: json["max"],
        unit: json["unit"],
        periodName: json["periodName"],
        preOrder: json["preOrder"],
        availabilityDate: json["availabilityDate"],
        deliveryNote: json["deliveryNote"],
      );

  Map<String, dynamic> toJson() => {
        "min": min,
        "max": max,
        "unit": unit,
        "periodName": periodName,
        "preOrder": preOrder,
        "availabilityDate": availabilityDate,
        "deliveryNote": deliveryNote,
      };
}
