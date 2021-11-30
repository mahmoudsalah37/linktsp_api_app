class SettingModel {
  SettingModel({
    this.versions,
    this.forceUpdate,
  });

  List<Version>? versions;
  bool? forceUpdate;

  factory SettingModel.fromJson(Map<String, dynamic> json) => SettingModel(
        versions: json["versions"] == null
            ? null
            : List<Version>.from(
                json["versions"].map((x) => Version.fromJson(x))),
        forceUpdate: json["forceUpdate"],
      );

  Map<String, dynamic> toJson() => {
        "versions": versions == null
            ? null
            : List<dynamic>.from(versions!.map((x) => x.toJson())),
        "forceUpdate": forceUpdate,
      };
}

class Version {
  Version({
    this.no,
    this.available,
    this.serial,
  });

  String? no;
  bool? available;
  double? serial;

  factory Version.fromJson(Map<String, dynamic> json) => Version(
        no: json["no"],
        available: json["available"],
        serial: json["serial"],
      );

  Map<String, dynamic> toJson() => {
        "no": no,
        "available": available,
        "serial": serial,
      };
}
