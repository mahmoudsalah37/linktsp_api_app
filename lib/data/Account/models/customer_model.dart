class CustomerModel {
  int? iD;
  String? firstName;
  String? lastName;
  String? mobile;
  String? email;
  bool? isActive;
  int? zoneID;
  int? gender;

  CustomerModel(
      {this.iD,
      this.firstName,
      this.lastName,
      this.mobile,
      this.email,
      this.isActive,
      this.zoneID,
      this.gender});

  CustomerModel.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    firstName = json['FirstName'];
    lastName = json['LastName'];
    mobile = json['Mobile'];
    email = json['Email'];
    isActive = json['IsActive'];
    zoneID = json['ZoneID'];
    gender = json['Gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['FirstName'] = firstName;
    data['LastName'] = lastName;
    data['Mobile'] = mobile;
    data['Email'] = email;
    data['IsActive'] = isActive;
    data['ZoneID'] = zoneID;
    data['Gender'] = gender;
    return data;
  }
}
