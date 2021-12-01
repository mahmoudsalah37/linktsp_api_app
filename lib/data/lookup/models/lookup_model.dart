class ComplaintLookupModel {
  ComplaintLookupModel({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory ComplaintLookupModel.fromJson(Map<String, dynamic> json) =>
      ComplaintLookupModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class CancelReasonLookupModel {
  CancelReasonLookupModel({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory CancelReasonLookupModel.fromJson(Map<String, dynamic> json) =>
      CancelReasonLookupModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class FeedbackReasonsLookupModel {
  FeedbackReasonsLookupModel({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory FeedbackReasonsLookupModel.fromJson(Map<String, dynamic> json) =>
      FeedbackReasonsLookupModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
