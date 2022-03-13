// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'ribbon_model.freezed.dart';
part 'ribbon_model.g.dart';

@freezed
class RibbonModel with _$RibbonModel {
  const factory RibbonModel({
    @JsonKey(name: 'value') String? value,
  }) = _RibbonModel;

  factory RibbonModel.fromJson(Map<String, dynamic> json) =>
      _$RibbonModelFromJson(json);
}
