class RegisterModel {
  RegisterModel({
    this.password,
    this.conditionAgreement,
    this.mobileType,
    this.isSubscribed,
    this.deviceId,
    this.id,
    this.firstName,
    this.lastName,
    this.mobile,
    this.email,
    this.isActive,
    this.zoneId,
    this.gender,
  });

  String? password;
  bool? conditionAgreement;
  String? mobileType;
  bool? isSubscribed;
  String? deviceId;
  int? id;
  String? firstName;
  String? lastName;
  String? mobile;
  String? email;
  bool? isActive;
  int? zoneId;
  int? gender;

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        password: json["password"],
        conditionAgreement: json["conditionAgreement"],
        mobileType: json["mobileType"],
        isSubscribed: json["isSubscribed"],
        deviceId: json["deviceID"],
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        mobile: json["mobile"],
        email: json["email"],
        isActive: json["isActive"],
        zoneId: json["zoneID"],
        gender: json["gender"],
      );

  Map<String, dynamic> toJson() => {
        "password": password,
        "conditionAgreement": conditionAgreement,
        "mobileType": mobileType,
        "isSubscribed": isSubscribed,
        "deviceID": deviceId,
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "mobile": mobile,
        "email": email,
        "isActive": isActive,
        "zoneID": zoneId,
        "gender": gender,
      };
}
