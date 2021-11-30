import 'package:equatable/equatable.dart';

class CityModel extends Equatable {
  const CityModel({
    this.id,
    this.name,
  });

  final int? id;
  final String? name;

  factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };

  @override
  List<Object?> get props => [id, name];
}
