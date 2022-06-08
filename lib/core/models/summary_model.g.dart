// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SummaryCWProxy {
  Summary additionalInfo(String? additionalInfo);

  Summary currencySymbol(String? currencySymbol);

  Summary title(String? title);

  Summary value(String? value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Summary(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Summary(...).copyWith(id: 12, name: "My name")
  /// ````
  Summary call({
    String? additionalInfo,
    String? currencySymbol,
    String? title,
    String? value,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSummary.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSummary.copyWith.fieldName(...)`
class _$SummaryCWProxyImpl implements _$SummaryCWProxy {
  final Summary _value;

  const _$SummaryCWProxyImpl(this._value);

  @override
  Summary additionalInfo(String? additionalInfo) =>
      this(additionalInfo: additionalInfo);

  @override
  Summary currencySymbol(String? currencySymbol) =>
      this(currencySymbol: currencySymbol);

  @override
  Summary title(String? title) => this(title: title);

  @override
  Summary value(String? value) => this(value: value);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Summary(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Summary(...).copyWith(id: 12, name: "My name")
  /// ````
  Summary call({
    Object? additionalInfo = const $CopyWithPlaceholder(),
    Object? currencySymbol = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return Summary(
      additionalInfo: additionalInfo == const $CopyWithPlaceholder()
          ? _value.additionalInfo
          // ignore: cast_nullable_to_non_nullable
          : additionalInfo as String?,
      currencySymbol: currencySymbol == const $CopyWithPlaceholder()
          ? _value.currencySymbol
          // ignore: cast_nullable_to_non_nullable
          : currencySymbol as String?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String?,
    );
  }
}

extension $SummaryCopyWith on Summary {
  /// Returns a callable class that can be used as follows: `instanceOfSummary.copyWith(...)` or like so:`instanceOfSummary.copyWith.fieldName(...)`.
  _$SummaryCWProxy get copyWith => _$SummaryCWProxyImpl(this);
}
