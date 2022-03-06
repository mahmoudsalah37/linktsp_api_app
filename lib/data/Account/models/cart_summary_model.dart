class CustomerSummaryModel {
  CustomerSummaryModel({
    this.loyaltyPoints,
    this.loyaltyPointsEnabled,
    this.loyaltyProgramName,
    this.loyaltyProgramId,
    this.wishListCount,
    this.ordersThisMonth,
  });

  double? loyaltyPoints;
  bool? loyaltyPointsEnabled;
  String? loyaltyProgramName;
  String? loyaltyProgramId;
  int? wishListCount;
  int? ordersThisMonth;

  factory CustomerSummaryModel.fromJson(Map<String, dynamic> json) {
    final data = CustomerSummaryModel(
        loyaltyPoints: json["loyaltyPoints"],
        loyaltyPointsEnabled: json["loyaltyPointsEnabled"],
        loyaltyProgramName: json["loyaltyProgramName"],
        loyaltyProgramId: json["loyaltyProgramId"],
        wishListCount: json["wishListCount"],
        ordersThisMonth: json["ordersThisMonth"]);
    return data;
  }

  Map<String, dynamic> to() => {
        "loyaltyPoints": loyaltyPoints,
        "loyaltyPointsEnabled": loyaltyPointsEnabled,
        "loyaltyProgramName": loyaltyProgramName,
        "loyaltyProgramId": loyaltyProgramId,
        "wishListCount": wishListCount,
        "ordersThisMonth": ordersThisMonth,
      };
}
