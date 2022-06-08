import 'package:copy_with_extension/copy_with_extension.dart';

part 'summary_model.g.dart';

@CopyWith()
class Summary {
  Summary({
    this.title,
    this.value,
    this.additionalInfo,
    this.currencySymbol,
  });

  String? title;
  String? value;
  String? additionalInfo;
  String? currencySymbol;

  factory Summary.fromJson(Map<String, dynamic> json) => Summary(
        title: json["title"],
        value: json["value"],
        additionalInfo: json["additionalInfo"],
        currencySymbol: json["currencySymbol"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "value": value,
        "additionalInfo": additionalInfo,
        "currencySymbol": currencySymbol,
      };
}
