import 'package:linktsp_api/data/account/models/cities_model.dart';

class AddressModel {
  AddressModel({
    this.id,
    this.customerId,
    this.firstName,
    this.lastName,
    this.address,
    this.building,
    this.floor,
    this.apartment,
    this.postalCode,
    this.mobile,
    this.isDefault,
    this.name,
    this.zoneId,
    this.latitude,
    this.longitude,
    this.locationUrl,
    this.city,
    this.orderCount,
  });

  int? id;
  int? customerId;
  String? firstName;
  String? lastName;
  String? address;
  String? building;
  String? floor;
  String? apartment;
  String? postalCode;
  String? mobile;
  bool? isDefault;
  String? name;
  int? zoneId;
  double? latitude;
  double? longitude;
  String? locationUrl;
  CityModel? city;
  int? orderCount;

  factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
        id: json["id"],
        customerId: json["customerID"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        address: json["address"],
        building: json["building"],
        floor: json["floor"],
        apartment: json["apartment"],
        postalCode: json["postalCode"],
        mobile: json["mobile"],
        isDefault: json["isDefault"],
        name: json["name"],
        zoneId: json["zoneID"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        locationUrl: json["locationUrl"],
        city: json["city"] == null ? null : CityModel.fromJson(json["city"]),
        orderCount: json["orderCount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customerID": customerId,
        "firstName": firstName,
        "lastName": lastName,
        "address": address,
        "building": building,
        "floor": floor,
        "apartment": apartment,
        "postalCode": postalCode,
        "mobile": mobile,
        "isDefault": isDefault,
        "name": name,
        "zoneID": zoneId,
        "latitude": latitude,
        "longitude": longitude,
        "locationUrl": locationUrl,
        "city": city == null ? null : city!.toJson(),
        "orderCount": orderCount,
      };
}
