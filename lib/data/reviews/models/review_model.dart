class ReviewModel {
  ReviewModel({
    this.reviewsCount,
    this.reviewsAvgRate,
    this.length,
    this.items,
  });

  int? reviewsCount;
  double? reviewsAvgRate;
  int? length;
  List<ItemReview>? items;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
        reviewsCount: json["reviewsCount"],
        reviewsAvgRate: json["reviewsAvgRate"],
        length: json["length"],
        items: json["items"] == null
            ? null
            : List<ItemReview>.from(
                json["items"].map((x) => ItemReview.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "reviewsCount": reviewsCount,
        "reviewsAvgRate": reviewsAvgRate,
        "length": length,
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class ItemReview {
  ItemReview({
    this.id,
    this.description,
    this.pros,
    this.cons,
    this.productCode,
    this.customerId,
    this.customerName,
    this.rating,
    this.date,
    this.zoneId,
  });

  int? id;
  String? description;
  String? pros;
  String? cons;
  String? productCode;
  int? customerId;
  String? customerName;
  double? rating;
  String? date;
  int? zoneId;

  factory ItemReview.fromJson(Map<String, dynamic> json) => ItemReview(
        id: json["id"],
        description: json["description"],
        pros: json["pros"],
        cons: json["cons"],
        productCode: json["productCode"],
        customerId: json["customerID"],
        customerName: json["customerName"],
        rating: json["rating"],
        date: json["date"],
        zoneId: json["zoneID"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description,
        "pros": pros,
        "cons": cons,
        "productCode": productCode,
        "customerID": customerId,
        "customerName": customerName,
        "rating": rating,
        "date": date,
        "zoneID": zoneId,
      };
}

class ReviewRateModel {
  ReviewRateModel({
    this.length,
    this.reviewsAvgRate,
    this.items,
  });

  int? length;
  double? reviewsAvgRate;
  List<int>? items;

  factory ReviewRateModel.fromJson(Map<String, dynamic> json) =>
      ReviewRateModel(
        length: json["length"],
        reviewsAvgRate: json["reviewsAvgRate"],
        items: json["items"] == null
            ? null
            : List<int>.from(json["items"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "length": length,
        "reviewsAvgRate": reviewsAvgRate,
        "items":
            items == null ? null : List<dynamic>.from(items!.map((x) => x)),
      };
}
