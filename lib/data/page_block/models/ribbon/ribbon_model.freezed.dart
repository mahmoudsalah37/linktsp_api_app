// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ribbon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RibbonModel _$RibbonModelFromJson(Map<String, dynamic> json) {
  return _RibbonModel.fromJson(json);
}

/// @nodoc
class _$RibbonModelTearOff {
  const _$RibbonModelTearOff();

  _RibbonModel call({@JsonKey(name: 'value') String? value}) {
    return _RibbonModel(
      value: value,
    );
  }

  RibbonModel fromJson(Map<String, Object?> json) {
    return RibbonModel.fromJson(json);
  }
}

/// @nodoc
const $RibbonModel = _$RibbonModelTearOff();

/// @nodoc
mixin _$RibbonModel {
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RibbonModelCopyWith<RibbonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RibbonModelCopyWith<$Res> {
  factory $RibbonModelCopyWith(
          RibbonModel value, $Res Function(RibbonModel) then) =
      _$RibbonModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'value') String? value});
}

/// @nodoc
class _$RibbonModelCopyWithImpl<$Res> implements $RibbonModelCopyWith<$Res> {
  _$RibbonModelCopyWithImpl(this._value, this._then);

  final RibbonModel _value;
  // ignore: unused_field
  final $Res Function(RibbonModel) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RibbonModelCopyWith<$Res>
    implements $RibbonModelCopyWith<$Res> {
  factory _$RibbonModelCopyWith(
          _RibbonModel value, $Res Function(_RibbonModel) then) =
      __$RibbonModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'value') String? value});
}

/// @nodoc
class __$RibbonModelCopyWithImpl<$Res> extends _$RibbonModelCopyWithImpl<$Res>
    implements _$RibbonModelCopyWith<$Res> {
  __$RibbonModelCopyWithImpl(
      _RibbonModel _value, $Res Function(_RibbonModel) _then)
      : super(_value, (v) => _then(v as _RibbonModel));

  @override
  _RibbonModel get _value => super._value as _RibbonModel;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_RibbonModel(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RibbonModel implements _RibbonModel {
  const _$_RibbonModel({@JsonKey(name: 'value') this.value});

  factory _$_RibbonModel.fromJson(Map<String, dynamic> json) =>
      _$$_RibbonModelFromJson(json);

  @override
  @JsonKey(name: 'value')
  final String? value;

  @override
  String toString() {
    return 'RibbonModel(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RibbonModel &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$RibbonModelCopyWith<_RibbonModel> get copyWith =>
      __$RibbonModelCopyWithImpl<_RibbonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RibbonModelToJson(this);
  }
}

abstract class _RibbonModel implements RibbonModel {
  const factory _RibbonModel({@JsonKey(name: 'value') String? value}) =
      _$_RibbonModel;

  factory _RibbonModel.fromJson(Map<String, dynamic> json) =
      _$_RibbonModel.fromJson;

  @override
  @JsonKey(name: 'value')
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$RibbonModelCopyWith<_RibbonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
