import 'package:linktsp_api/data/Account/models/cities_model.dart';

class UserModel {
  UserModel({
    this.year,
    this.month,
    this.day,
    this.city,
    this.isSubscribed,
    this.minAge,
    required this.id,
    this.firstName,
    this.lastName,
    this.mobile,
    this.email,
    this.isActive,
    this.zoneId,
    this.gender,
  });

  int? year;
  int? month;
  int? day;
  CityModel? city;
  bool? isSubscribed;
  int? minAge;
  int id;
  String? firstName;
  String? lastName;
  String? mobile;
  String? email;
  bool? isActive;
  int? zoneId;
  Gender? gender;

  factory UserModel.fromJson(Map<String, dynamic> json) {
    final userModel = UserModel(
        year: json["year"],
        month: json["month"],
        day: json["day"],
        city: json["city"] == null ? null : CityModel.fromJson(json["city"]),
        isSubscribed: json["isSubscribed"],
        minAge: json["minAge"],
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        mobile: json["mobile"],
        email: json["email"],
        isActive: json["isActive"],
        zoneId: json["zoneID"],
        gender: Gender.values.elementAt(json["gender"]));
    // json["gender"] == null ? null : json["gender"]);
    return userModel;
  }

  Map<String, dynamic> toJson() => {
        "year": year,
        "month": month,
        "day": day,
        "city": city?.toJson(),
        "isSubscribed": isSubscribed,
        "minAge": minAge,
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

enum Gender { OTHER, MALE, FEMALE }
