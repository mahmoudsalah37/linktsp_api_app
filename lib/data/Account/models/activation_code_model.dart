class ActivationCodeModel {
  ActivationCodeModel({
    this.id,
    this.activationCode,
    this.email,
    this.mobile,
    this.zoneId,
  });

  int? id;
  String? activationCode;
  String? email;
  String? mobile;
  int? zoneId;

  factory ActivationCodeModel.fromJson(Map<String, dynamic> json) {
    final data = ActivationCodeModel(
      id: json["id"],
      activationCode: json["activationCode"],
      email: json["email"],
      mobile: json["mobile"],
      zoneId: json["zoneID"],
    );
    return data;
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "activationCode": activationCode,
        "email": email,
        "mobile": mobile,
        "zoneID": zoneId,
      };
}
