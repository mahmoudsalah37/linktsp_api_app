// ignore_for_file: constant_identifier_names

class SocialLoginModel {
  SocialLoginModel({
    this.applicationKey,
    this.screteKey,
    this.socialType,
  });

  String? applicationKey;
  String? screteKey;
  int? socialType;

  factory SocialLoginModel.fromJson(Map<String, dynamic> json) =>
      SocialLoginModel(
        applicationKey: json["applicationKey"],
        screteKey: json["screteKey"],
        socialType: json["socialType"],
      );

  Map<String, dynamic> toJson() => {
        "applicationKey": applicationKey,
        "screteKey": screteKey,
        "socialType": socialType,
      };
}

class SocialLoginUserModel {
  SocialLoginUserModel({
    this.firstName,
    this.lastName,
    this.email,
    this.mobile,
    this.imageUrl,
    this.socialType,
    this.socialCode,
    this.id,
    this.deviceId,
    this.appleId,
  });

  String? firstName;
  String? lastName;
  String? email;
  String? mobile;
  String? imageUrl;
  dynamic socialType;
  String? socialCode;
  int? id;
  String? deviceId;
  String? appleId;

  factory SocialLoginUserModel.fromJson(Map<String, dynamic> json) =>
      SocialLoginUserModel(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        mobile: json["mobile"],
        imageUrl: json["imageUrl"],
        socialType: json["socialType"],
        socialCode: json["socialCode"],
        id: json["id"],
        deviceId: json["deviceID"],
        appleId: json["appleId"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "mobile": mobile,
        "imageUrl": imageUrl,
        "socialType": socialType,
        "socialCode": socialCode,
        "id": id,
        "deviceID": deviceId,
        "appleId": appleId,
      };
}

enum SocialEnum { t, Facebook, Twitter, Instagram, tt, ttt, tttt, appleid }
