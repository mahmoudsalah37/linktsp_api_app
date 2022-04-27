// To parse this JSON data, do
//
//     final registerModelV3 = registerModelV3FromJson(jsonString);

import 'dart:convert';

RegisterModelV3 registerModelV3FromJson(String str) =>
    RegisterModelV3.fromJson(json.decode(str));

String registerModelV3ToJson(RegisterModelV3 data) =>
    json.encode(data.toJson());

class RegisterModelV3 {
  RegisterModelV3({
    this.year,
    this.month,
    this.day,
    this.password,
    this.conditionAgreement,
    this.mobileType,
    this.isSubscribed,
    this.deviceId,
    this.deviceToken,
    this.id,
    this.firstName,
    this.lastName,
    this.mobile,
    this.email,
    this.isActive,
    this.zoneId,
    this.gender,
  });

  final int? year;
  final int? month;
  final int? day;
  final String? password;
  final bool? conditionAgreement;
  final int? mobileType;
  final bool? isSubscribed;
  final String? deviceId;
  final String? deviceToken;
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? mobile;
  final String? email;
  final bool? isActive;
  final int? zoneId;
  final int? gender;

  RegisterModelV3 copyWith({
    int? year,
    int? month,
    int? day,
    String? password,
    bool? conditionAgreement,
    int? mobileType,
    bool? isSubscribed,
    String? deviceId,
    String? deviceToken,
    int? id,
    String? firstName,
    String? lastName,
    String? mobile,
    String? email,
    bool? isActive,
    int? zoneId,
    int? gender,
  }) =>
      RegisterModelV3(
        year: year ?? this.year,
        month: month ?? this.month,
        day: day ?? this.day,
        password: password ?? this.password,
        conditionAgreement: conditionAgreement ?? this.conditionAgreement,
        mobileType: mobileType ?? this.mobileType,
        isSubscribed: isSubscribed ?? this.isSubscribed,
        deviceId: deviceId ?? this.deviceId,
        deviceToken: deviceToken ?? this.deviceToken,
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        mobile: mobile ?? this.mobile,
        email: email ?? this.email,
        isActive: isActive ?? this.isActive,
        zoneId: zoneId ?? this.zoneId,
        gender: gender ?? this.gender,
      );

  factory RegisterModelV3.fromJson(Map<String, dynamic> json) =>
      RegisterModelV3(
        year: json["year"],
        month: json["month"],
        day: json["day"],
        password: json["password"],
        conditionAgreement: json["conditionAgreement"],
        mobileType: json["mobileType"],
        isSubscribed: json["isSubscribed"],
        deviceId: json["deviceID"],
        deviceToken: json["deviceToken"],
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
        "year": year,
        "month": month,
        "day": day,
        "password": password,
        "conditionAgreement": conditionAgreement,
        "mobileType": mobileType,
        "isSubscribed": isSubscribed,
        "deviceID": deviceId,
        "deviceToken": deviceToken,
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
