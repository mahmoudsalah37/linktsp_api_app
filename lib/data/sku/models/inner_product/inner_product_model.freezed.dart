// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inner_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InnerProductModel _$InnerProductModelFromJson(Map<String, dynamic> json) {
  return _InnerProductModel.fromJson(json);
}

/// @nodoc
class _$InnerProductModelTearOff {
  const _$InnerProductModelTearOff();

  _InnerProductModel call(
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'code')
          String? code,
      @JsonKey(name: 'brand')
          BrandModel? brands,
      @JsonKey(name: 'title')
          String title = '',
      @JsonKey(name: 'averageRating')
          double averageRating = 0,
      @JsonKey(name: 'sizes')
          List<SizeModel?> sizes = const <SizeModel?>[],
      @JsonKey(name: 'colors')
          List<ColorModel?> colors = const <ColorModel?>[],
      @JsonKey(name: 'skUs')
          List<SkuModel?> skus = const <SkuModel?>[],
      @JsonKey(name: 'details')
          String details = '',
      @JsonKey(name: 'shortDescription')
          String description = '',
      @JsonKey(name: 'showSizeChart')
          bool isShowSizeChart = false,
      @JsonKey(name: 'sizeChartImageURL')
          String? sizeGuide,
      @JsonKey(name: 'showOneClickOrder')
          bool showOneClickOrder = false,
      @JsonKey(name: 'isWishList')
          bool isAddedtoWishlist = false,
      @JsonKey(name: 'minDeliveryPeriod')
          int minDeliveryPeriod = 0,
      @JsonKey(name: 'maxDeliveryPeriod')
          int maxDeliveryPeriod = 0,
      @JsonKey(name: 'periodName')
          String periodName = '',
      @JsonKey(name: 'deliveryNote')
          String deliveryNote = '',
      @JsonKey(name: 'bogoPromoText')
          String bogoPromoText = '',
      @JsonKey(name: 'reviews')
          ReviewUserCommentModel? review,
      @JsonKey(name: 'features')
          List<FeatureModel?> features = const <FeatureModel?>[],
      @JsonKey(name: 'productCategories')
          List<CategoryModel> categories = const <CategoryModel>[],
      @JsonKey(name: 'recentItems')
          List<ProductModel> recentItems = const <ProductModel>[],
      @JsonKey(name: 'relatedItems')
          List<ProductModel> relatedItems = const <ProductModel>[],
      @JsonKey(name: 'allowRating')
          bool isEnableAddReview = false,
      @JsonKey(name: 'allPricesIincludeVATDetails')
          String allPricesIncludeVATDetails = ''}) {
    return _InnerProductModel(
      id: id,
      code: code,
      brands: brands,
      title: title,
      averageRating: averageRating,
      sizes: sizes,
      colors: colors,
      skus: skus,
      details: details,
      description: description,
      isShowSizeChart: isShowSizeChart,
      sizeGuide: sizeGuide,
      showOneClickOrder: showOneClickOrder,
      isAddedtoWishlist: isAddedtoWishlist,
      minDeliveryPeriod: minDeliveryPeriod,
      maxDeliveryPeriod: maxDeliveryPeriod,
      periodName: periodName,
      deliveryNote: deliveryNote,
      bogoPromoText: bogoPromoText,
      review: review,
      features: features,
      categories: categories,
      recentItems: recentItems,
      relatedItems: relatedItems,
      isEnableAddReview: isEnableAddReview,
      allPricesIncludeVATDetails: allPricesIncludeVATDetails,
    );
  }

  InnerProductModel fromJson(Map<String, Object?> json) {
    return InnerProductModel.fromJson(json);
  }
}

/// @nodoc
const $InnerProductModel = _$InnerProductModelTearOff();

/// @nodoc
mixin _$InnerProductModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  BrandModel? get brands => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'averageRating')
  double get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'sizes')
  List<SizeModel?> get sizes => throw _privateConstructorUsedError;
  @JsonKey(name: 'colors')
  List<ColorModel?> get colors => throw _privateConstructorUsedError;
  @JsonKey(name: 'skUs')
  List<SkuModel?> get skus => throw _privateConstructorUsedError;
  @JsonKey(name: 'details')
  String get details => throw _privateConstructorUsedError;
  @JsonKey(name: 'shortDescription')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'showSizeChart')
  bool get isShowSizeChart => throw _privateConstructorUsedError;
  @JsonKey(name: 'sizeChartImageURL')
  String? get sizeGuide => throw _privateConstructorUsedError;
  @JsonKey(name: 'showOneClickOrder')
  bool get showOneClickOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'isWishList')
  bool get isAddedtoWishlist => throw _privateConstructorUsedError;
  @JsonKey(name: 'minDeliveryPeriod')
  int get minDeliveryPeriod => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxDeliveryPeriod')
  int get maxDeliveryPeriod => throw _privateConstructorUsedError;
  @JsonKey(name: 'periodName')
  String get periodName => throw _privateConstructorUsedError;
  @JsonKey(name: 'deliveryNote')
  String get deliveryNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'bogoPromoText')
  String get bogoPromoText => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews')
  ReviewUserCommentModel? get review => throw _privateConstructorUsedError;
  @JsonKey(name: 'features')
  List<FeatureModel?> get features => throw _privateConstructorUsedError;
  @JsonKey(name: 'productCategories')
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  @JsonKey(name: 'recentItems')
  List<ProductModel> get recentItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'relatedItems')
  List<ProductModel> get relatedItems => throw _privateConstructorUsedError;
  @JsonKey(name: 'allowRating')
  bool get isEnableAddReview => throw _privateConstructorUsedError;
  @JsonKey(name: 'allPricesIincludeVATDetails')
  String get allPricesIncludeVATDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InnerProductModelCopyWith<InnerProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerProductModelCopyWith<$Res> {
  factory $InnerProductModelCopyWith(
          InnerProductModel value, $Res Function(InnerProductModel) then) =
      _$InnerProductModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'code')
          String? code,
      @JsonKey(name: 'brand')
          BrandModel? brands,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'averageRating')
          double averageRating,
      @JsonKey(name: 'sizes')
          List<SizeModel?> sizes,
      @JsonKey(name: 'colors')
          List<ColorModel?> colors,
      @JsonKey(name: 'skUs')
          List<SkuModel?> skus,
      @JsonKey(name: 'details')
          String details,
      @JsonKey(name: 'shortDescription')
          String description,
      @JsonKey(name: 'showSizeChart')
          bool isShowSizeChart,
      @JsonKey(name: 'sizeChartImageURL')
          String? sizeGuide,
      @JsonKey(name: 'showOneClickOrder')
          bool showOneClickOrder,
      @JsonKey(name: 'isWishList')
          bool isAddedtoWishlist,
      @JsonKey(name: 'minDeliveryPeriod')
          int minDeliveryPeriod,
      @JsonKey(name: 'maxDeliveryPeriod')
          int maxDeliveryPeriod,
      @JsonKey(name: 'periodName')
          String periodName,
      @JsonKey(name: 'deliveryNote')
          String deliveryNote,
      @JsonKey(name: 'bogoPromoText')
          String bogoPromoText,
      @JsonKey(name: 'reviews')
          ReviewUserCommentModel? review,
      @JsonKey(name: 'features')
          List<FeatureModel?> features,
      @JsonKey(name: 'productCategories')
          List<CategoryModel> categories,
      @JsonKey(name: 'recentItems')
          List<ProductModel> recentItems,
      @JsonKey(name: 'relatedItems')
          List<ProductModel> relatedItems,
      @JsonKey(name: 'allowRating')
          bool isEnableAddReview,
      @JsonKey(name: 'allPricesIincludeVATDetails')
          String allPricesIncludeVATDetails});

  $BrandModelCopyWith<$Res>? get brands;
  $ReviewUserCommentModelCopyWith<$Res>? get review;
}

/// @nodoc
class _$InnerProductModelCopyWithImpl<$Res>
    implements $InnerProductModelCopyWith<$Res> {
  _$InnerProductModelCopyWithImpl(this._value, this._then);

  final InnerProductModel _value;
  // ignore: unused_field
  final $Res Function(InnerProductModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? brands = freezed,
    Object? title = freezed,
    Object? averageRating = freezed,
    Object? sizes = freezed,
    Object? colors = freezed,
    Object? skus = freezed,
    Object? details = freezed,
    Object? description = freezed,
    Object? isShowSizeChart = freezed,
    Object? sizeGuide = freezed,
    Object? showOneClickOrder = freezed,
    Object? isAddedtoWishlist = freezed,
    Object? minDeliveryPeriod = freezed,
    Object? maxDeliveryPeriod = freezed,
    Object? periodName = freezed,
    Object? deliveryNote = freezed,
    Object? bogoPromoText = freezed,
    Object? review = freezed,
    Object? features = freezed,
    Object? categories = freezed,
    Object? recentItems = freezed,
    Object? relatedItems = freezed,
    Object? isEnableAddReview = freezed,
    Object? allPricesIncludeVATDetails = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      brands: brands == freezed
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      sizes: sizes == freezed
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<SizeModel?>,
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorModel?>,
      skus: skus == freezed
          ? _value.skus
          : skus // ignore: cast_nullable_to_non_nullable
              as List<SkuModel?>,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isShowSizeChart: isShowSizeChart == freezed
          ? _value.isShowSizeChart
          : isShowSizeChart // ignore: cast_nullable_to_non_nullable
              as bool,
      sizeGuide: sizeGuide == freezed
          ? _value.sizeGuide
          : sizeGuide // ignore: cast_nullable_to_non_nullable
              as String?,
      showOneClickOrder: showOneClickOrder == freezed
          ? _value.showOneClickOrder
          : showOneClickOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddedtoWishlist: isAddedtoWishlist == freezed
          ? _value.isAddedtoWishlist
          : isAddedtoWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      minDeliveryPeriod: minDeliveryPeriod == freezed
          ? _value.minDeliveryPeriod
          : minDeliveryPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      maxDeliveryPeriod: maxDeliveryPeriod == freezed
          ? _value.maxDeliveryPeriod
          : maxDeliveryPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      periodName: periodName == freezed
          ? _value.periodName
          : periodName // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryNote: deliveryNote == freezed
          ? _value.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String,
      bogoPromoText: bogoPromoText == freezed
          ? _value.bogoPromoText
          : bogoPromoText // ignore: cast_nullable_to_non_nullable
              as String,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as ReviewUserCommentModel?,
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<FeatureModel?>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      recentItems: recentItems == freezed
          ? _value.recentItems
          : recentItems // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      relatedItems: relatedItems == freezed
          ? _value.relatedItems
          : relatedItems // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isEnableAddReview: isEnableAddReview == freezed
          ? _value.isEnableAddReview
          : isEnableAddReview // ignore: cast_nullable_to_non_nullable
              as bool,
      allPricesIncludeVATDetails: allPricesIncludeVATDetails == freezed
          ? _value.allPricesIncludeVATDetails
          : allPricesIncludeVATDetails // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $BrandModelCopyWith<$Res>? get brands {
    if (_value.brands == null) {
      return null;
    }

    return $BrandModelCopyWith<$Res>(_value.brands!, (value) {
      return _then(_value.copyWith(brands: value));
    });
  }

  @override
  $ReviewUserCommentModelCopyWith<$Res>? get review {
    if (_value.review == null) {
      return null;
    }

    return $ReviewUserCommentModelCopyWith<$Res>(_value.review!, (value) {
      return _then(_value.copyWith(review: value));
    });
  }
}

/// @nodoc
abstract class _$InnerProductModelCopyWith<$Res>
    implements $InnerProductModelCopyWith<$Res> {
  factory _$InnerProductModelCopyWith(
          _InnerProductModel value, $Res Function(_InnerProductModel) then) =
      __$InnerProductModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'code')
          String? code,
      @JsonKey(name: 'brand')
          BrandModel? brands,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'averageRating')
          double averageRating,
      @JsonKey(name: 'sizes')
          List<SizeModel?> sizes,
      @JsonKey(name: 'colors')
          List<ColorModel?> colors,
      @JsonKey(name: 'skUs')
          List<SkuModel?> skus,
      @JsonKey(name: 'details')
          String details,
      @JsonKey(name: 'shortDescription')
          String description,
      @JsonKey(name: 'showSizeChart')
          bool isShowSizeChart,
      @JsonKey(name: 'sizeChartImageURL')
          String? sizeGuide,
      @JsonKey(name: 'showOneClickOrder')
          bool showOneClickOrder,
      @JsonKey(name: 'isWishList')
          bool isAddedtoWishlist,
      @JsonKey(name: 'minDeliveryPeriod')
          int minDeliveryPeriod,
      @JsonKey(name: 'maxDeliveryPeriod')
          int maxDeliveryPeriod,
      @JsonKey(name: 'periodName')
          String periodName,
      @JsonKey(name: 'deliveryNote')
          String deliveryNote,
      @JsonKey(name: 'bogoPromoText')
          String bogoPromoText,
      @JsonKey(name: 'reviews')
          ReviewUserCommentModel? review,
      @JsonKey(name: 'features')
          List<FeatureModel?> features,
      @JsonKey(name: 'productCategories')
          List<CategoryModel> categories,
      @JsonKey(name: 'recentItems')
          List<ProductModel> recentItems,
      @JsonKey(name: 'relatedItems')
          List<ProductModel> relatedItems,
      @JsonKey(name: 'allowRating')
          bool isEnableAddReview,
      @JsonKey(name: 'allPricesIincludeVATDetails')
          String allPricesIncludeVATDetails});

  @override
  $BrandModelCopyWith<$Res>? get brands;
  @override
  $ReviewUserCommentModelCopyWith<$Res>? get review;
}

/// @nodoc
class __$InnerProductModelCopyWithImpl<$Res>
    extends _$InnerProductModelCopyWithImpl<$Res>
    implements _$InnerProductModelCopyWith<$Res> {
  __$InnerProductModelCopyWithImpl(
      _InnerProductModel _value, $Res Function(_InnerProductModel) _then)
      : super(_value, (v) => _then(v as _InnerProductModel));

  @override
  _InnerProductModel get _value => super._value as _InnerProductModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? brands = freezed,
    Object? title = freezed,
    Object? averageRating = freezed,
    Object? sizes = freezed,
    Object? colors = freezed,
    Object? skus = freezed,
    Object? details = freezed,
    Object? description = freezed,
    Object? isShowSizeChart = freezed,
    Object? sizeGuide = freezed,
    Object? showOneClickOrder = freezed,
    Object? isAddedtoWishlist = freezed,
    Object? minDeliveryPeriod = freezed,
    Object? maxDeliveryPeriod = freezed,
    Object? periodName = freezed,
    Object? deliveryNote = freezed,
    Object? bogoPromoText = freezed,
    Object? review = freezed,
    Object? features = freezed,
    Object? categories = freezed,
    Object? recentItems = freezed,
    Object? relatedItems = freezed,
    Object? isEnableAddReview = freezed,
    Object? allPricesIncludeVATDetails = freezed,
  }) {
    return _then(_InnerProductModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      brands: brands == freezed
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as BrandModel?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      averageRating: averageRating == freezed
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      sizes: sizes == freezed
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<SizeModel?>,
      colors: colors == freezed
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<ColorModel?>,
      skus: skus == freezed
          ? _value.skus
          : skus // ignore: cast_nullable_to_non_nullable
              as List<SkuModel?>,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isShowSizeChart: isShowSizeChart == freezed
          ? _value.isShowSizeChart
          : isShowSizeChart // ignore: cast_nullable_to_non_nullable
              as bool,
      sizeGuide: sizeGuide == freezed
          ? _value.sizeGuide
          : sizeGuide // ignore: cast_nullable_to_non_nullable
              as String?,
      showOneClickOrder: showOneClickOrder == freezed
          ? _value.showOneClickOrder
          : showOneClickOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddedtoWishlist: isAddedtoWishlist == freezed
          ? _value.isAddedtoWishlist
          : isAddedtoWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      minDeliveryPeriod: minDeliveryPeriod == freezed
          ? _value.minDeliveryPeriod
          : minDeliveryPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      maxDeliveryPeriod: maxDeliveryPeriod == freezed
          ? _value.maxDeliveryPeriod
          : maxDeliveryPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      periodName: periodName == freezed
          ? _value.periodName
          : periodName // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryNote: deliveryNote == freezed
          ? _value.deliveryNote
          : deliveryNote // ignore: cast_nullable_to_non_nullable
              as String,
      bogoPromoText: bogoPromoText == freezed
          ? _value.bogoPromoText
          : bogoPromoText // ignore: cast_nullable_to_non_nullable
              as String,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as ReviewUserCommentModel?,
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<FeatureModel?>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      recentItems: recentItems == freezed
          ? _value.recentItems
          : recentItems // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      relatedItems: relatedItems == freezed
          ? _value.relatedItems
          : relatedItems // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isEnableAddReview: isEnableAddReview == freezed
          ? _value.isEnableAddReview
          : isEnableAddReview // ignore: cast_nullable_to_non_nullable
              as bool,
      allPricesIncludeVATDetails: allPricesIncludeVATDetails == freezed
          ? _value.allPricesIncludeVATDetails
          : allPricesIncludeVATDetails // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InnerProductModel implements _InnerProductModel {
  const _$_InnerProductModel(
      {@JsonKey(name: 'id')
          this.id,
      @JsonKey(name: 'code')
          this.code,
      @JsonKey(name: 'brand')
          this.brands,
      @JsonKey(name: 'title')
          this.title = '',
      @JsonKey(name: 'averageRating')
          this.averageRating = 0,
      @JsonKey(name: 'sizes')
          this.sizes = const <SizeModel?>[],
      @JsonKey(name: 'colors')
          this.colors = const <ColorModel?>[],
      @JsonKey(name: 'skUs')
          this.skus = const <SkuModel?>[],
      @JsonKey(name: 'details')
          this.details = '',
      @JsonKey(name: 'shortDescription')
          this.description = '',
      @JsonKey(name: 'showSizeChart')
          this.isShowSizeChart = false,
      @JsonKey(name: 'sizeChartImageURL')
          this.sizeGuide,
      @JsonKey(name: 'showOneClickOrder')
          this.showOneClickOrder = false,
      @JsonKey(name: 'isWishList')
          this.isAddedtoWishlist = false,
      @JsonKey(name: 'minDeliveryPeriod')
          this.minDeliveryPeriod = 0,
      @JsonKey(name: 'maxDeliveryPeriod')
          this.maxDeliveryPeriod = 0,
      @JsonKey(name: 'periodName')
          this.periodName = '',
      @JsonKey(name: 'deliveryNote')
          this.deliveryNote = '',
      @JsonKey(name: 'bogoPromoText')
          this.bogoPromoText = '',
      @JsonKey(name: 'reviews')
          this.review,
      @JsonKey(name: 'features')
          this.features = const <FeatureModel?>[],
      @JsonKey(name: 'productCategories')
          this.categories = const <CategoryModel>[],
      @JsonKey(name: 'recentItems')
          this.recentItems = const <ProductModel>[],
      @JsonKey(name: 'relatedItems')
          this.relatedItems = const <ProductModel>[],
      @JsonKey(name: 'allowRating')
          this.isEnableAddReview = false,
      @JsonKey(name: 'allPricesIincludeVATDetails')
          this.allPricesIncludeVATDetails = ''});

  factory _$_InnerProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_InnerProductModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'brand')
  final BrandModel? brands;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'averageRating')
  final double averageRating;
  @override
  @JsonKey(name: 'sizes')
  final List<SizeModel?> sizes;
  @override
  @JsonKey(name: 'colors')
  final List<ColorModel?> colors;
  @override
  @JsonKey(name: 'skUs')
  final List<SkuModel?> skus;
  @override
  @JsonKey(name: 'details')
  final String details;
  @override
  @JsonKey(name: 'shortDescription')
  final String description;
  @override
  @JsonKey(name: 'showSizeChart')
  final bool isShowSizeChart;
  @override
  @JsonKey(name: 'sizeChartImageURL')
  final String? sizeGuide;
  @override
  @JsonKey(name: 'showOneClickOrder')
  final bool showOneClickOrder;
  @override
  @JsonKey(name: 'isWishList')
  final bool isAddedtoWishlist;
  @override
  @JsonKey(name: 'minDeliveryPeriod')
  final int minDeliveryPeriod;
  @override
  @JsonKey(name: 'maxDeliveryPeriod')
  final int maxDeliveryPeriod;
  @override
  @JsonKey(name: 'periodName')
  final String periodName;
  @override
  @JsonKey(name: 'deliveryNote')
  final String deliveryNote;
  @override
  @JsonKey(name: 'bogoPromoText')
  final String bogoPromoText;
  @override
  @JsonKey(name: 'reviews')
  final ReviewUserCommentModel? review;
  @override
  @JsonKey(name: 'features')
  final List<FeatureModel?> features;
  @override
  @JsonKey(name: 'productCategories')
  final List<CategoryModel> categories;
  @override
  @JsonKey(name: 'recentItems')
  final List<ProductModel> recentItems;
  @override
  @JsonKey(name: 'relatedItems')
  final List<ProductModel> relatedItems;
  @override
  @JsonKey(name: 'allowRating')
  final bool isEnableAddReview;
  @override
  @JsonKey(name: 'allPricesIincludeVATDetails')
  final String allPricesIncludeVATDetails;

  @override
  String toString() {
    return 'InnerProductModel(id: $id, code: $code, brands: $brands, title: $title, averageRating: $averageRating, sizes: $sizes, colors: $colors, skus: $skus, details: $details, description: $description, isShowSizeChart: $isShowSizeChart, sizeGuide: $sizeGuide, showOneClickOrder: $showOneClickOrder, isAddedtoWishlist: $isAddedtoWishlist, minDeliveryPeriod: $minDeliveryPeriod, maxDeliveryPeriod: $maxDeliveryPeriod, periodName: $periodName, deliveryNote: $deliveryNote, bogoPromoText: $bogoPromoText, review: $review, features: $features, categories: $categories, recentItems: $recentItems, relatedItems: $relatedItems, isEnableAddReview: $isEnableAddReview, allPricesIncludeVATDetails: $allPricesIncludeVATDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InnerProductModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.brands, brands) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.averageRating, averageRating) &&
            const DeepCollectionEquality().equals(other.sizes, sizes) &&
            const DeepCollectionEquality().equals(other.colors, colors) &&
            const DeepCollectionEquality().equals(other.skus, skus) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.isShowSizeChart, isShowSizeChart) &&
            const DeepCollectionEquality().equals(other.sizeGuide, sizeGuide) &&
            const DeepCollectionEquality()
                .equals(other.showOneClickOrder, showOneClickOrder) &&
            const DeepCollectionEquality()
                .equals(other.isAddedtoWishlist, isAddedtoWishlist) &&
            const DeepCollectionEquality()
                .equals(other.minDeliveryPeriod, minDeliveryPeriod) &&
            const DeepCollectionEquality()
                .equals(other.maxDeliveryPeriod, maxDeliveryPeriod) &&
            const DeepCollectionEquality()
                .equals(other.periodName, periodName) &&
            const DeepCollectionEquality()
                .equals(other.deliveryNote, deliveryNote) &&
            const DeepCollectionEquality()
                .equals(other.bogoPromoText, bogoPromoText) &&
            const DeepCollectionEquality().equals(other.review, review) &&
            const DeepCollectionEquality().equals(other.features, features) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality()
                .equals(other.recentItems, recentItems) &&
            const DeepCollectionEquality()
                .equals(other.relatedItems, relatedItems) &&
            const DeepCollectionEquality()
                .equals(other.isEnableAddReview, isEnableAddReview) &&
            const DeepCollectionEquality().equals(
                other.allPricesIncludeVATDetails, allPricesIncludeVATDetails));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(code),
        const DeepCollectionEquality().hash(brands),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(averageRating),
        const DeepCollectionEquality().hash(sizes),
        const DeepCollectionEquality().hash(colors),
        const DeepCollectionEquality().hash(skus),
        const DeepCollectionEquality().hash(details),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(isShowSizeChart),
        const DeepCollectionEquality().hash(sizeGuide),
        const DeepCollectionEquality().hash(showOneClickOrder),
        const DeepCollectionEquality().hash(isAddedtoWishlist),
        const DeepCollectionEquality().hash(minDeliveryPeriod),
        const DeepCollectionEquality().hash(maxDeliveryPeriod),
        const DeepCollectionEquality().hash(periodName),
        const DeepCollectionEquality().hash(deliveryNote),
        const DeepCollectionEquality().hash(bogoPromoText),
        const DeepCollectionEquality().hash(review),
        const DeepCollectionEquality().hash(features),
        const DeepCollectionEquality().hash(categories),
        const DeepCollectionEquality().hash(recentItems),
        const DeepCollectionEquality().hash(relatedItems),
        const DeepCollectionEquality().hash(isEnableAddReview),
        const DeepCollectionEquality().hash(allPricesIncludeVATDetails)
      ]);

  @JsonKey(ignore: true)
  @override
  _$InnerProductModelCopyWith<_InnerProductModel> get copyWith =>
      __$InnerProductModelCopyWithImpl<_InnerProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InnerProductModelToJson(this);
  }
}

abstract class _InnerProductModel implements InnerProductModel {
  const factory _InnerProductModel(
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'code')
          String? code,
      @JsonKey(name: 'brand')
          BrandModel? brands,
      @JsonKey(name: 'title')
          String title,
      @JsonKey(name: 'averageRating')
          double averageRating,
      @JsonKey(name: 'sizes')
          List<SizeModel?> sizes,
      @JsonKey(name: 'colors')
          List<ColorModel?> colors,
      @JsonKey(name: 'skUs')
          List<SkuModel?> skus,
      @JsonKey(name: 'details')
          String details,
      @JsonKey(name: 'shortDescription')
          String description,
      @JsonKey(name: 'showSizeChart')
          bool isShowSizeChart,
      @JsonKey(name: 'sizeChartImageURL')
          String? sizeGuide,
      @JsonKey(name: 'showOneClickOrder')
          bool showOneClickOrder,
      @JsonKey(name: 'isWishList')
          bool isAddedtoWishlist,
      @JsonKey(name: 'minDeliveryPeriod')
          int minDeliveryPeriod,
      @JsonKey(name: 'maxDeliveryPeriod')
          int maxDeliveryPeriod,
      @JsonKey(name: 'periodName')
          String periodName,
      @JsonKey(name: 'deliveryNote')
          String deliveryNote,
      @JsonKey(name: 'bogoPromoText')
          String bogoPromoText,
      @JsonKey(name: 'reviews')
          ReviewUserCommentModel? review,
      @JsonKey(name: 'features')
          List<FeatureModel?> features,
      @JsonKey(name: 'productCategories')
          List<CategoryModel> categories,
      @JsonKey(name: 'recentItems')
          List<ProductModel> recentItems,
      @JsonKey(name: 'relatedItems')
          List<ProductModel> relatedItems,
      @JsonKey(name: 'allowRating')
          bool isEnableAddReview,
      @JsonKey(name: 'allPricesIincludeVATDetails')
          String allPricesIncludeVATDetails}) = _$_InnerProductModel;

  factory _InnerProductModel.fromJson(Map<String, dynamic> json) =
      _$_InnerProductModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'brand')
  BrandModel? get brands;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'averageRating')
  double get averageRating;
  @override
  @JsonKey(name: 'sizes')
  List<SizeModel?> get sizes;
  @override
  @JsonKey(name: 'colors')
  List<ColorModel?> get colors;
  @override
  @JsonKey(name: 'skUs')
  List<SkuModel?> get skus;
  @override
  @JsonKey(name: 'details')
  String get details;
  @override
  @JsonKey(name: 'shortDescription')
  String get description;
  @override
  @JsonKey(name: 'showSizeChart')
  bool get isShowSizeChart;
  @override
  @JsonKey(name: 'sizeChartImageURL')
  String? get sizeGuide;
  @override
  @JsonKey(name: 'showOneClickOrder')
  bool get showOneClickOrder;
  @override
  @JsonKey(name: 'isWishList')
  bool get isAddedtoWishlist;
  @override
  @JsonKey(name: 'minDeliveryPeriod')
  int get minDeliveryPeriod;
  @override
  @JsonKey(name: 'maxDeliveryPeriod')
  int get maxDeliveryPeriod;
  @override
  @JsonKey(name: 'periodName')
  String get periodName;
  @override
  @JsonKey(name: 'deliveryNote')
  String get deliveryNote;
  @override
  @JsonKey(name: 'bogoPromoText')
  String get bogoPromoText;
  @override
  @JsonKey(name: 'reviews')
  ReviewUserCommentModel? get review;
  @override
  @JsonKey(name: 'features')
  List<FeatureModel?> get features;
  @override
  @JsonKey(name: 'productCategories')
  List<CategoryModel> get categories;
  @override
  @JsonKey(name: 'recentItems')
  List<ProductModel> get recentItems;
  @override
  @JsonKey(name: 'relatedItems')
  List<ProductModel> get relatedItems;
  @override
  @JsonKey(name: 'allowRating')
  bool get isEnableAddReview;
  @override
  @JsonKey(name: 'allPricesIincludeVATDetails')
  String get allPricesIncludeVATDetails;
  @override
  @JsonKey(ignore: true)
  _$InnerProductModelCopyWith<_InnerProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewUserCommentModel _$ReviewUserCommentModelFromJson(
    Map<String, dynamic> json) {
  return _ReviewUserCommentModel.fromJson(json);
}

/// @nodoc
class _$ReviewUserCommentModelTearOff {
  const _$ReviewUserCommentModelTearOff();

  _ReviewUserCommentModel call(
      {@JsonKey(name: 'items')
          List<ItemReviewModel> items = const <ItemReviewModel>[]}) {
    return _ReviewUserCommentModel(
      items: items,
    );
  }

  ReviewUserCommentModel fromJson(Map<String, Object?> json) {
    return ReviewUserCommentModel.fromJson(json);
  }
}

/// @nodoc
const $ReviewUserCommentModel = _$ReviewUserCommentModelTearOff();

/// @nodoc
mixin _$ReviewUserCommentModel {
  @JsonKey(name: 'items')
  List<ItemReviewModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewUserCommentModelCopyWith<ReviewUserCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewUserCommentModelCopyWith<$Res> {
  factory $ReviewUserCommentModelCopyWith(ReviewUserCommentModel value,
          $Res Function(ReviewUserCommentModel) then) =
      _$ReviewUserCommentModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'items') List<ItemReviewModel> items});
}

/// @nodoc
class _$ReviewUserCommentModelCopyWithImpl<$Res>
    implements $ReviewUserCommentModelCopyWith<$Res> {
  _$ReviewUserCommentModelCopyWithImpl(this._value, this._then);

  final ReviewUserCommentModel _value;
  // ignore: unused_field
  final $Res Function(ReviewUserCommentModel) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemReviewModel>,
    ));
  }
}

/// @nodoc
abstract class _$ReviewUserCommentModelCopyWith<$Res>
    implements $ReviewUserCommentModelCopyWith<$Res> {
  factory _$ReviewUserCommentModelCopyWith(_ReviewUserCommentModel value,
          $Res Function(_ReviewUserCommentModel) then) =
      __$ReviewUserCommentModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'items') List<ItemReviewModel> items});
}

/// @nodoc
class __$ReviewUserCommentModelCopyWithImpl<$Res>
    extends _$ReviewUserCommentModelCopyWithImpl<$Res>
    implements _$ReviewUserCommentModelCopyWith<$Res> {
  __$ReviewUserCommentModelCopyWithImpl(_ReviewUserCommentModel _value,
      $Res Function(_ReviewUserCommentModel) _then)
      : super(_value, (v) => _then(v as _ReviewUserCommentModel));

  @override
  _ReviewUserCommentModel get _value => super._value as _ReviewUserCommentModel;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_ReviewUserCommentModel(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemReviewModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewUserCommentModel implements _ReviewUserCommentModel {
  const _$_ReviewUserCommentModel(
      {@JsonKey(name: 'items') this.items = const <ItemReviewModel>[]});

  factory _$_ReviewUserCommentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewUserCommentModelFromJson(json);

  @override
  @JsonKey(name: 'items')
  final List<ItemReviewModel> items;

  @override
  String toString() {
    return 'ReviewUserCommentModel(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReviewUserCommentModel &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  _$ReviewUserCommentModelCopyWith<_ReviewUserCommentModel> get copyWith =>
      __$ReviewUserCommentModelCopyWithImpl<_ReviewUserCommentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewUserCommentModelToJson(this);
  }
}

abstract class _ReviewUserCommentModel implements ReviewUserCommentModel {
  const factory _ReviewUserCommentModel(
          {@JsonKey(name: 'items') List<ItemReviewModel> items}) =
      _$_ReviewUserCommentModel;

  factory _ReviewUserCommentModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewUserCommentModel.fromJson;

  @override
  @JsonKey(name: 'items')
  List<ItemReviewModel> get items;
  @override
  @JsonKey(ignore: true)
  _$ReviewUserCommentModelCopyWith<_ReviewUserCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemReviewModel _$ItemReviewModelFromJson(Map<String, dynamic> json) {
  return _ItemReviewModel.fromJson(json);
}

/// @nodoc
class _$ItemReviewModelTearOff {
  const _$ItemReviewModelTearOff();

  _ItemReviewModel call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'description') String description = '',
      @JsonKey(name: 'productCode') String productCode = '',
      @JsonKey(name: 'customerName') String customerName = '',
      @JsonKey(name: 'date') String date = '',
      @JsonKey(name: 'rating') double rating = 0}) {
    return _ItemReviewModel(
      id: id,
      description: description,
      productCode: productCode,
      customerName: customerName,
      date: date,
      rating: rating,
    );
  }

  ItemReviewModel fromJson(Map<String, Object?> json) {
    return ItemReviewModel.fromJson(json);
  }
}

/// @nodoc
const $ItemReviewModel = _$ItemReviewModelTearOff();

/// @nodoc
mixin _$ItemReviewModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'productCode')
  String get productCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerName')
  String get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemReviewModelCopyWith<ItemReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemReviewModelCopyWith<$Res> {
  factory $ItemReviewModelCopyWith(
          ItemReviewModel value, $Res Function(ItemReviewModel) then) =
      _$ItemReviewModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'productCode') String productCode,
      @JsonKey(name: 'customerName') String customerName,
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'rating') double rating});
}

/// @nodoc
class _$ItemReviewModelCopyWithImpl<$Res>
    implements $ItemReviewModelCopyWith<$Res> {
  _$ItemReviewModelCopyWithImpl(this._value, this._then);

  final ItemReviewModel _value;
  // ignore: unused_field
  final $Res Function(ItemReviewModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? productCode = freezed,
    Object? customerName = freezed,
    Object? date = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      productCode: productCode == freezed
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ItemReviewModelCopyWith<$Res>
    implements $ItemReviewModelCopyWith<$Res> {
  factory _$ItemReviewModelCopyWith(
          _ItemReviewModel value, $Res Function(_ItemReviewModel) then) =
      __$ItemReviewModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'productCode') String productCode,
      @JsonKey(name: 'customerName') String customerName,
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'rating') double rating});
}

/// @nodoc
class __$ItemReviewModelCopyWithImpl<$Res>
    extends _$ItemReviewModelCopyWithImpl<$Res>
    implements _$ItemReviewModelCopyWith<$Res> {
  __$ItemReviewModelCopyWithImpl(
      _ItemReviewModel _value, $Res Function(_ItemReviewModel) _then)
      : super(_value, (v) => _then(v as _ItemReviewModel));

  @override
  _ItemReviewModel get _value => super._value as _ItemReviewModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? productCode = freezed,
    Object? customerName = freezed,
    Object? date = freezed,
    Object? rating = freezed,
  }) {
    return _then(_ItemReviewModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      productCode: productCode == freezed
          ? _value.productCode
          : productCode // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemReviewModel implements _ItemReviewModel {
  const _$_ItemReviewModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'productCode') this.productCode = '',
      @JsonKey(name: 'customerName') this.customerName = '',
      @JsonKey(name: 'date') this.date = '',
      @JsonKey(name: 'rating') this.rating = 0});

  factory _$_ItemReviewModel.fromJson(Map<String, dynamic> json) =>
      _$$_ItemReviewModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'productCode')
  final String productCode;
  @override
  @JsonKey(name: 'customerName')
  final String customerName;
  @override
  @JsonKey(name: 'date')
  final String date;
  @override
  @JsonKey(name: 'rating')
  final double rating;

  @override
  String toString() {
    return 'ItemReviewModel(id: $id, description: $description, productCode: $productCode, customerName: $customerName, date: $date, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemReviewModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.productCode, productCode) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(productCode),
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$ItemReviewModelCopyWith<_ItemReviewModel> get copyWith =>
      __$ItemReviewModelCopyWithImpl<_ItemReviewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemReviewModelToJson(this);
  }
}

abstract class _ItemReviewModel implements ItemReviewModel {
  const factory _ItemReviewModel(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'productCode') String productCode,
      @JsonKey(name: 'customerName') String customerName,
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'rating') double rating}) = _$_ItemReviewModel;

  factory _ItemReviewModel.fromJson(Map<String, dynamic> json) =
      _$_ItemReviewModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'productCode')
  String get productCode;
  @override
  @JsonKey(name: 'customerName')
  String get customerName;
  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(name: 'rating')
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$ItemReviewModelCopyWith<_ItemReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandModel _$BrandModelFromJson(Map<String, dynamic> json) {
  return _BrandModel.fromJson(json);
}

/// @nodoc
class _$BrandModelTearOff {
  const _$BrandModelTearOff();

  _BrandModel call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String name = ''}) {
    return _BrandModel(
      id: id,
      name: name,
    );
  }

  BrandModel fromJson(Map<String, Object?> json) {
    return BrandModel.fromJson(json);
  }
}

/// @nodoc
const $BrandModel = _$BrandModelTearOff();

/// @nodoc
mixin _$BrandModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandModelCopyWith<BrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandModelCopyWith<$Res> {
  factory $BrandModelCopyWith(
          BrandModel value, $Res Function(BrandModel) then) =
      _$BrandModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$BrandModelCopyWithImpl<$Res> implements $BrandModelCopyWith<$Res> {
  _$BrandModelCopyWithImpl(this._value, this._then);

  final BrandModel _value;
  // ignore: unused_field
  final $Res Function(BrandModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BrandModelCopyWith<$Res> implements $BrandModelCopyWith<$Res> {
  factory _$BrandModelCopyWith(
          _BrandModel value, $Res Function(_BrandModel) then) =
      __$BrandModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$BrandModelCopyWithImpl<$Res> extends _$BrandModelCopyWithImpl<$Res>
    implements _$BrandModelCopyWith<$Res> {
  __$BrandModelCopyWithImpl(
      _BrandModel _value, $Res Function(_BrandModel) _then)
      : super(_value, (v) => _then(v as _BrandModel));

  @override
  _BrandModel get _value => super._value as _BrandModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_BrandModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandModel implements _BrandModel {
  const _$_BrandModel(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name = ''});

  factory _$_BrandModel.fromJson(Map<String, dynamic> json) =>
      _$$_BrandModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'BrandModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BrandModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$BrandModelCopyWith<_BrandModel> get copyWith =>
      __$BrandModelCopyWithImpl<_BrandModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandModelToJson(this);
  }
}

abstract class _BrandModel implements BrandModel {
  const factory _BrandModel(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String name}) = _$_BrandModel;

  factory _BrandModel.fromJson(Map<String, dynamic> json) =
      _$_BrandModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$BrandModelCopyWith<_BrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SizeModel _$SizeModelFromJson(Map<String, dynamic> json) {
  return _SizeModel.fromJson(json);
}

/// @nodoc
class _$SizeModelTearOff {
  const _$SizeModelTearOff();

  _SizeModel call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String name = ''}) {
    return _SizeModel(
      id: id,
      name: name,
    );
  }

  SizeModel fromJson(Map<String, Object?> json) {
    return SizeModel.fromJson(json);
  }
}

/// @nodoc
const $SizeModel = _$SizeModelTearOff();

/// @nodoc
mixin _$SizeModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeModelCopyWith<SizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeModelCopyWith<$Res> {
  factory $SizeModelCopyWith(SizeModel value, $Res Function(SizeModel) then) =
      _$SizeModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$SizeModelCopyWithImpl<$Res> implements $SizeModelCopyWith<$Res> {
  _$SizeModelCopyWithImpl(this._value, this._then);

  final SizeModel _value;
  // ignore: unused_field
  final $Res Function(SizeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SizeModelCopyWith<$Res> implements $SizeModelCopyWith<$Res> {
  factory _$SizeModelCopyWith(
          _SizeModel value, $Res Function(_SizeModel) then) =
      __$SizeModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$SizeModelCopyWithImpl<$Res> extends _$SizeModelCopyWithImpl<$Res>
    implements _$SizeModelCopyWith<$Res> {
  __$SizeModelCopyWithImpl(_SizeModel _value, $Res Function(_SizeModel) _then)
      : super(_value, (v) => _then(v as _SizeModel));

  @override
  _SizeModel get _value => super._value as _SizeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_SizeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SizeModel implements _SizeModel {
  const _$_SizeModel(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name = ''});

  factory _$_SizeModel.fromJson(Map<String, dynamic> json) =>
      _$$_SizeModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'SizeModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SizeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$SizeModelCopyWith<_SizeModel> get copyWith =>
      __$SizeModelCopyWithImpl<_SizeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SizeModelToJson(this);
  }
}

abstract class _SizeModel implements SizeModel {
  const factory _SizeModel(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String name}) = _$_SizeModel;

  factory _SizeModel.fromJson(Map<String, dynamic> json) =
      _$_SizeModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$SizeModelCopyWith<_SizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ColorModel _$ColorModelFromJson(Map<String, dynamic> json) {
  return _ColorModel.fromJson(json);
}

/// @nodoc
class _$ColorModelTearOff {
  const _$ColorModelTearOff();

  _ColorModel call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String name = '',
      @JsonKey(name: 'hexa') String? hexa,
      @JsonKey(name: 'croppedImageURL') String? thumbnail,
      @JsonKey(name: 'enableCropping') bool? enableCropping = false}) {
    return _ColorModel(
      id: id,
      name: name,
      hexa: hexa,
      thumbnail: thumbnail,
      enableCropping: enableCropping,
    );
  }

  ColorModel fromJson(Map<String, Object?> json) {
    return ColorModel.fromJson(json);
  }
}

/// @nodoc
const $ColorModel = _$ColorModelTearOff();

/// @nodoc
mixin _$ColorModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'hexa')
  String? get hexa => throw _privateConstructorUsedError;
  @JsonKey(name: 'croppedImageURL')
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'enableCropping')
  bool? get enableCropping => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorModelCopyWith<ColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorModelCopyWith<$Res> {
  factory $ColorModelCopyWith(
          ColorModel value, $Res Function(ColorModel) then) =
      _$ColorModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'hexa') String? hexa,
      @JsonKey(name: 'croppedImageURL') String? thumbnail,
      @JsonKey(name: 'enableCropping') bool? enableCropping});
}

/// @nodoc
class _$ColorModelCopyWithImpl<$Res> implements $ColorModelCopyWith<$Res> {
  _$ColorModelCopyWithImpl(this._value, this._then);

  final ColorModel _value;
  // ignore: unused_field
  final $Res Function(ColorModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? hexa = freezed,
    Object? thumbnail = freezed,
    Object? enableCropping = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hexa: hexa == freezed
          ? _value.hexa
          : hexa // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      enableCropping: enableCropping == freezed
          ? _value.enableCropping
          : enableCropping // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$ColorModelCopyWith<$Res> implements $ColorModelCopyWith<$Res> {
  factory _$ColorModelCopyWith(
          _ColorModel value, $Res Function(_ColorModel) then) =
      __$ColorModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'hexa') String? hexa,
      @JsonKey(name: 'croppedImageURL') String? thumbnail,
      @JsonKey(name: 'enableCropping') bool? enableCropping});
}

/// @nodoc
class __$ColorModelCopyWithImpl<$Res> extends _$ColorModelCopyWithImpl<$Res>
    implements _$ColorModelCopyWith<$Res> {
  __$ColorModelCopyWithImpl(
      _ColorModel _value, $Res Function(_ColorModel) _then)
      : super(_value, (v) => _then(v as _ColorModel));

  @override
  _ColorModel get _value => super._value as _ColorModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? hexa = freezed,
    Object? thumbnail = freezed,
    Object? enableCropping = freezed,
  }) {
    return _then(_ColorModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hexa: hexa == freezed
          ? _value.hexa
          : hexa // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      enableCropping: enableCropping == freezed
          ? _value.enableCropping
          : enableCropping // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ColorModel implements _ColorModel {
  const _$_ColorModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'hexa') this.hexa,
      @JsonKey(name: 'croppedImageURL') this.thumbnail,
      @JsonKey(name: 'enableCropping') this.enableCropping = false});

  factory _$_ColorModel.fromJson(Map<String, dynamic> json) =>
      _$$_ColorModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'hexa')
  final String? hexa;
  @override
  @JsonKey(name: 'croppedImageURL')
  final String? thumbnail;
  @override
  @JsonKey(name: 'enableCropping')
  final bool? enableCropping;

  @override
  String toString() {
    return 'ColorModel(id: $id, name: $name, hexa: $hexa, thumbnail: $thumbnail, enableCropping: $enableCropping)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ColorModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.hexa, hexa) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality()
                .equals(other.enableCropping, enableCropping));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(hexa),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(enableCropping));

  @JsonKey(ignore: true)
  @override
  _$ColorModelCopyWith<_ColorModel> get copyWith =>
      __$ColorModelCopyWithImpl<_ColorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ColorModelToJson(this);
  }
}

abstract class _ColorModel implements ColorModel {
  const factory _ColorModel(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'hexa') String? hexa,
      @JsonKey(name: 'croppedImageURL') String? thumbnail,
      @JsonKey(name: 'enableCropping') bool? enableCropping}) = _$_ColorModel;

  factory _ColorModel.fromJson(Map<String, dynamic> json) =
      _$_ColorModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'hexa')
  String? get hexa;
  @override
  @JsonKey(name: 'croppedImageURL')
  String? get thumbnail;
  @override
  @JsonKey(name: 'enableCropping')
  bool? get enableCropping;
  @override
  @JsonKey(ignore: true)
  _$ColorModelCopyWith<_ColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SkuModel _$SkuModelFromJson(Map<String, dynamic> json) {
  return _SkuModel.fromJson(json);
}

/// @nodoc
class _$SkuModelTearOff {
  const _$SkuModelTearOff();

  _SkuModel call(
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'preOrder')
          bool preOrder = false,
      @JsonKey(name: 'sku')
          String skuCode = '',
      @JsonKey(name: 'availabilityDate')
          String availabilityDate = '',
      @JsonKey(name: 'price')
          double defaultPrice = 0,
      @JsonKey(name: 'finalPrice')
          double finalPrice = 0,
      @JsonKey(name: 'colorID')
          int? colorId,
      @JsonKey(name: 'sizeID')
          int? sizeId,
      @JsonKey(name: 'images')
          List<ImageModel?> images = const <ImageModel?>[],
      @JsonKey(name: 'productDiscountList')
          List<DiscountModel?> discounts = const <DiscountModel?>[],
      @JsonKey(name: 'hasDiscount')
          bool hasDiscount = false,
      @JsonKey(name: 'maxQty')
          int maxQuantity = 0,
      @JsonKey(name: 'isAvaliable')
          bool isAvaliable = false,
      @JsonKey(name: 'quantityLeft')
          int quantityInStock = 0,
      @JsonKey(name: 'extras')
          List<ExtraDto?> extras = const <ExtraDto?>[],
      @JsonKey(name: 'options')
          List<ExtraDto?> options = const <ExtraDto?>[]}) {
    return _SkuModel(
      id: id,
      preOrder: preOrder,
      skuCode: skuCode,
      availabilityDate: availabilityDate,
      defaultPrice: defaultPrice,
      finalPrice: finalPrice,
      colorId: colorId,
      sizeId: sizeId,
      images: images,
      discounts: discounts,
      hasDiscount: hasDiscount,
      maxQuantity: maxQuantity,
      isAvaliable: isAvaliable,
      quantityInStock: quantityInStock,
      extras: extras,
      options: options,
    );
  }

  SkuModel fromJson(Map<String, Object?> json) {
    return SkuModel.fromJson(json);
  }
}

/// @nodoc
const $SkuModel = _$SkuModelTearOff();

/// @nodoc
mixin _$SkuModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'preOrder')
  bool get preOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku')
  String get skuCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'availabilityDate')
  String get availabilityDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get defaultPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'finalPrice')
  double get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'colorID')
  int? get colorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sizeID')
  int? get sizeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ImageModel?> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'productDiscountList')
  List<DiscountModel?> get discounts => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasDiscount')
  bool get hasDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxQty')
  int get maxQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'isAvaliable')
  bool get isAvaliable => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantityLeft')
  int get quantityInStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'extras')
  List<ExtraDto?> get extras => throw _privateConstructorUsedError;
  @JsonKey(name: 'options')
  List<ExtraDto?> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SkuModelCopyWith<SkuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkuModelCopyWith<$Res> {
  factory $SkuModelCopyWith(SkuModel value, $Res Function(SkuModel) then) =
      _$SkuModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'preOrder') bool preOrder,
      @JsonKey(name: 'sku') String skuCode,
      @JsonKey(name: 'availabilityDate') String availabilityDate,
      @JsonKey(name: 'price') double defaultPrice,
      @JsonKey(name: 'finalPrice') double finalPrice,
      @JsonKey(name: 'colorID') int? colorId,
      @JsonKey(name: 'sizeID') int? sizeId,
      @JsonKey(name: 'images') List<ImageModel?> images,
      @JsonKey(name: 'productDiscountList') List<DiscountModel?> discounts,
      @JsonKey(name: 'hasDiscount') bool hasDiscount,
      @JsonKey(name: 'maxQty') int maxQuantity,
      @JsonKey(name: 'isAvaliable') bool isAvaliable,
      @JsonKey(name: 'quantityLeft') int quantityInStock,
      @JsonKey(name: 'extras') List<ExtraDto?> extras,
      @JsonKey(name: 'options') List<ExtraDto?> options});
}

/// @nodoc
class _$SkuModelCopyWithImpl<$Res> implements $SkuModelCopyWith<$Res> {
  _$SkuModelCopyWithImpl(this._value, this._then);

  final SkuModel _value;
  // ignore: unused_field
  final $Res Function(SkuModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? preOrder = freezed,
    Object? skuCode = freezed,
    Object? availabilityDate = freezed,
    Object? defaultPrice = freezed,
    Object? finalPrice = freezed,
    Object? colorId = freezed,
    Object? sizeId = freezed,
    Object? images = freezed,
    Object? discounts = freezed,
    Object? hasDiscount = freezed,
    Object? maxQuantity = freezed,
    Object? isAvaliable = freezed,
    Object? quantityInStock = freezed,
    Object? extras = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      preOrder: preOrder == freezed
          ? _value.preOrder
          : preOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      skuCode: skuCode == freezed
          ? _value.skuCode
          : skuCode // ignore: cast_nullable_to_non_nullable
              as String,
      availabilityDate: availabilityDate == freezed
          ? _value.availabilityDate
          : availabilityDate // ignore: cast_nullable_to_non_nullable
              as String,
      defaultPrice: defaultPrice == freezed
          ? _value.defaultPrice
          : defaultPrice // ignore: cast_nullable_to_non_nullable
              as double,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      colorId: colorId == freezed
          ? _value.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeId: sizeId == freezed
          ? _value.sizeId
          : sizeId // ignore: cast_nullable_to_non_nullable
              as int?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel?>,
      discounts: discounts == freezed
          ? _value.discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<DiscountModel?>,
      hasDiscount: hasDiscount == freezed
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      maxQuantity: maxQuantity == freezed
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      isAvaliable: isAvaliable == freezed
          ? _value.isAvaliable
          : isAvaliable // ignore: cast_nullable_to_non_nullable
              as bool,
      quantityInStock: quantityInStock == freezed
          ? _value.quantityInStock
          : quantityInStock // ignore: cast_nullable_to_non_nullable
              as int,
      extras: extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<ExtraDto?>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<ExtraDto?>,
    ));
  }
}

/// @nodoc
abstract class _$SkuModelCopyWith<$Res> implements $SkuModelCopyWith<$Res> {
  factory _$SkuModelCopyWith(_SkuModel value, $Res Function(_SkuModel) then) =
      __$SkuModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'preOrder') bool preOrder,
      @JsonKey(name: 'sku') String skuCode,
      @JsonKey(name: 'availabilityDate') String availabilityDate,
      @JsonKey(name: 'price') double defaultPrice,
      @JsonKey(name: 'finalPrice') double finalPrice,
      @JsonKey(name: 'colorID') int? colorId,
      @JsonKey(name: 'sizeID') int? sizeId,
      @JsonKey(name: 'images') List<ImageModel?> images,
      @JsonKey(name: 'productDiscountList') List<DiscountModel?> discounts,
      @JsonKey(name: 'hasDiscount') bool hasDiscount,
      @JsonKey(name: 'maxQty') int maxQuantity,
      @JsonKey(name: 'isAvaliable') bool isAvaliable,
      @JsonKey(name: 'quantityLeft') int quantityInStock,
      @JsonKey(name: 'extras') List<ExtraDto?> extras,
      @JsonKey(name: 'options') List<ExtraDto?> options});
}

/// @nodoc
class __$SkuModelCopyWithImpl<$Res> extends _$SkuModelCopyWithImpl<$Res>
    implements _$SkuModelCopyWith<$Res> {
  __$SkuModelCopyWithImpl(_SkuModel _value, $Res Function(_SkuModel) _then)
      : super(_value, (v) => _then(v as _SkuModel));

  @override
  _SkuModel get _value => super._value as _SkuModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? preOrder = freezed,
    Object? skuCode = freezed,
    Object? availabilityDate = freezed,
    Object? defaultPrice = freezed,
    Object? finalPrice = freezed,
    Object? colorId = freezed,
    Object? sizeId = freezed,
    Object? images = freezed,
    Object? discounts = freezed,
    Object? hasDiscount = freezed,
    Object? maxQuantity = freezed,
    Object? isAvaliable = freezed,
    Object? quantityInStock = freezed,
    Object? extras = freezed,
    Object? options = freezed,
  }) {
    return _then(_SkuModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      preOrder: preOrder == freezed
          ? _value.preOrder
          : preOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      skuCode: skuCode == freezed
          ? _value.skuCode
          : skuCode // ignore: cast_nullable_to_non_nullable
              as String,
      availabilityDate: availabilityDate == freezed
          ? _value.availabilityDate
          : availabilityDate // ignore: cast_nullable_to_non_nullable
              as String,
      defaultPrice: defaultPrice == freezed
          ? _value.defaultPrice
          : defaultPrice // ignore: cast_nullable_to_non_nullable
              as double,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      colorId: colorId == freezed
          ? _value.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeId: sizeId == freezed
          ? _value.sizeId
          : sizeId // ignore: cast_nullable_to_non_nullable
              as int?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel?>,
      discounts: discounts == freezed
          ? _value.discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<DiscountModel?>,
      hasDiscount: hasDiscount == freezed
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      maxQuantity: maxQuantity == freezed
          ? _value.maxQuantity
          : maxQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      isAvaliable: isAvaliable == freezed
          ? _value.isAvaliable
          : isAvaliable // ignore: cast_nullable_to_non_nullable
              as bool,
      quantityInStock: quantityInStock == freezed
          ? _value.quantityInStock
          : quantityInStock // ignore: cast_nullable_to_non_nullable
              as int,
      extras: extras == freezed
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<ExtraDto?>,
      options: options == freezed
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<ExtraDto?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SkuModel implements _SkuModel {
  const _$_SkuModel(
      {@JsonKey(name: 'id')
          this.id,
      @JsonKey(name: 'preOrder')
          this.preOrder = false,
      @JsonKey(name: 'sku')
          this.skuCode = '',
      @JsonKey(name: 'availabilityDate')
          this.availabilityDate = '',
      @JsonKey(name: 'price')
          this.defaultPrice = 0,
      @JsonKey(name: 'finalPrice')
          this.finalPrice = 0,
      @JsonKey(name: 'colorID')
          this.colorId,
      @JsonKey(name: 'sizeID')
          this.sizeId,
      @JsonKey(name: 'images')
          this.images = const <ImageModel?>[],
      @JsonKey(name: 'productDiscountList')
          this.discounts = const <DiscountModel?>[],
      @JsonKey(name: 'hasDiscount')
          this.hasDiscount = false,
      @JsonKey(name: 'maxQty')
          this.maxQuantity = 0,
      @JsonKey(name: 'isAvaliable')
          this.isAvaliable = false,
      @JsonKey(name: 'quantityLeft')
          this.quantityInStock = 0,
      @JsonKey(name: 'extras')
          this.extras = const <ExtraDto?>[],
      @JsonKey(name: 'options')
          this.options = const <ExtraDto?>[]});

  factory _$_SkuModel.fromJson(Map<String, dynamic> json) =>
      _$$_SkuModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'preOrder')
  final bool preOrder;
  @override
  @JsonKey(name: 'sku')
  final String skuCode;
  @override
  @JsonKey(name: 'availabilityDate')
  final String availabilityDate;
  @override
  @JsonKey(name: 'price')
  final double defaultPrice;
  @override
  @JsonKey(name: 'finalPrice')
  final double finalPrice;
  @override
  @JsonKey(name: 'colorID')
  final int? colorId;
  @override
  @JsonKey(name: 'sizeID')
  final int? sizeId;
  @override
  @JsonKey(name: 'images')
  final List<ImageModel?> images;
  @override
  @JsonKey(name: 'productDiscountList')
  final List<DiscountModel?> discounts;
  @override
  @JsonKey(name: 'hasDiscount')
  final bool hasDiscount;
  @override
  @JsonKey(name: 'maxQty')
  final int maxQuantity;
  @override
  @JsonKey(name: 'isAvaliable')
  final bool isAvaliable;
  @override
  @JsonKey(name: 'quantityLeft')
  final int quantityInStock;
  @override
  @JsonKey(name: 'extras')
  final List<ExtraDto?> extras;
  @override
  @JsonKey(name: 'options')
  final List<ExtraDto?> options;

  @override
  String toString() {
    return 'SkuModel(id: $id, preOrder: $preOrder, skuCode: $skuCode, availabilityDate: $availabilityDate, defaultPrice: $defaultPrice, finalPrice: $finalPrice, colorId: $colorId, sizeId: $sizeId, images: $images, discounts: $discounts, hasDiscount: $hasDiscount, maxQuantity: $maxQuantity, isAvaliable: $isAvaliable, quantityInStock: $quantityInStock, extras: $extras, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SkuModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.preOrder, preOrder) &&
            const DeepCollectionEquality().equals(other.skuCode, skuCode) &&
            const DeepCollectionEquality()
                .equals(other.availabilityDate, availabilityDate) &&
            const DeepCollectionEquality()
                .equals(other.defaultPrice, defaultPrice) &&
            const DeepCollectionEquality()
                .equals(other.finalPrice, finalPrice) &&
            const DeepCollectionEquality().equals(other.colorId, colorId) &&
            const DeepCollectionEquality().equals(other.sizeId, sizeId) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.discounts, discounts) &&
            const DeepCollectionEquality()
                .equals(other.hasDiscount, hasDiscount) &&
            const DeepCollectionEquality()
                .equals(other.maxQuantity, maxQuantity) &&
            const DeepCollectionEquality()
                .equals(other.isAvaliable, isAvaliable) &&
            const DeepCollectionEquality()
                .equals(other.quantityInStock, quantityInStock) &&
            const DeepCollectionEquality().equals(other.extras, extras) &&
            const DeepCollectionEquality().equals(other.options, options));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(preOrder),
      const DeepCollectionEquality().hash(skuCode),
      const DeepCollectionEquality().hash(availabilityDate),
      const DeepCollectionEquality().hash(defaultPrice),
      const DeepCollectionEquality().hash(finalPrice),
      const DeepCollectionEquality().hash(colorId),
      const DeepCollectionEquality().hash(sizeId),
      const DeepCollectionEquality().hash(images),
      const DeepCollectionEquality().hash(discounts),
      const DeepCollectionEquality().hash(hasDiscount),
      const DeepCollectionEquality().hash(maxQuantity),
      const DeepCollectionEquality().hash(isAvaliable),
      const DeepCollectionEquality().hash(quantityInStock),
      const DeepCollectionEquality().hash(extras),
      const DeepCollectionEquality().hash(options));

  @JsonKey(ignore: true)
  @override
  _$SkuModelCopyWith<_SkuModel> get copyWith =>
      __$SkuModelCopyWithImpl<_SkuModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SkuModelToJson(this);
  }
}

abstract class _SkuModel implements SkuModel {
  const factory _SkuModel(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'preOrder') bool preOrder,
      @JsonKey(name: 'sku') String skuCode,
      @JsonKey(name: 'availabilityDate') String availabilityDate,
      @JsonKey(name: 'price') double defaultPrice,
      @JsonKey(name: 'finalPrice') double finalPrice,
      @JsonKey(name: 'colorID') int? colorId,
      @JsonKey(name: 'sizeID') int? sizeId,
      @JsonKey(name: 'images') List<ImageModel?> images,
      @JsonKey(name: 'productDiscountList') List<DiscountModel?> discounts,
      @JsonKey(name: 'hasDiscount') bool hasDiscount,
      @JsonKey(name: 'maxQty') int maxQuantity,
      @JsonKey(name: 'isAvaliable') bool isAvaliable,
      @JsonKey(name: 'quantityLeft') int quantityInStock,
      @JsonKey(name: 'extras') List<ExtraDto?> extras,
      @JsonKey(name: 'options') List<ExtraDto?> options}) = _$_SkuModel;

  factory _SkuModel.fromJson(Map<String, dynamic> json) = _$_SkuModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'preOrder')
  bool get preOrder;
  @override
  @JsonKey(name: 'sku')
  String get skuCode;
  @override
  @JsonKey(name: 'availabilityDate')
  String get availabilityDate;
  @override
  @JsonKey(name: 'price')
  double get defaultPrice;
  @override
  @JsonKey(name: 'finalPrice')
  double get finalPrice;
  @override
  @JsonKey(name: 'colorID')
  int? get colorId;
  @override
  @JsonKey(name: 'sizeID')
  int? get sizeId;
  @override
  @JsonKey(name: 'images')
  List<ImageModel?> get images;
  @override
  @JsonKey(name: 'productDiscountList')
  List<DiscountModel?> get discounts;
  @override
  @JsonKey(name: 'hasDiscount')
  bool get hasDiscount;
  @override
  @JsonKey(name: 'maxQty')
  int get maxQuantity;
  @override
  @JsonKey(name: 'isAvaliable')
  bool get isAvaliable;
  @override
  @JsonKey(name: 'quantityLeft')
  int get quantityInStock;
  @override
  @JsonKey(name: 'extras')
  List<ExtraDto?> get extras;
  @override
  @JsonKey(name: 'options')
  List<ExtraDto?> get options;
  @override
  @JsonKey(ignore: true)
  _$SkuModelCopyWith<_SkuModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return _ImageModel.fromJson(json);
}

/// @nodoc
class _$ImageModelTearOff {
  const _$ImageModelTearOff();

  _ImageModel call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'thumbUrl') String? thumbUrl}) {
    return _ImageModel(
      id: id,
      url: url,
      thumbUrl: thumbUrl,
    );
  }

  ImageModel fromJson(Map<String, Object?> json) {
    return ImageModel.fromJson(json);
  }
}

/// @nodoc
const $ImageModel = _$ImageModelTearOff();

/// @nodoc
mixin _$ImageModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbUrl')
  String? get thumbUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'thumbUrl') String? thumbUrl});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res> implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  final ImageModel _value;
  // ignore: unused_field
  final $Res Function(ImageModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? thumbUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbUrl: thumbUrl == freezed
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ImageModelCopyWith<$Res> implements $ImageModelCopyWith<$Res> {
  factory _$ImageModelCopyWith(
          _ImageModel value, $Res Function(_ImageModel) then) =
      __$ImageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'thumbUrl') String? thumbUrl});
}

/// @nodoc
class __$ImageModelCopyWithImpl<$Res> extends _$ImageModelCopyWithImpl<$Res>
    implements _$ImageModelCopyWith<$Res> {
  __$ImageModelCopyWithImpl(
      _ImageModel _value, $Res Function(_ImageModel) _then)
      : super(_value, (v) => _then(v as _ImageModel));

  @override
  _ImageModel get _value => super._value as _ImageModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? thumbUrl = freezed,
  }) {
    return _then(_ImageModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbUrl: thumbUrl == freezed
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageModel implements _ImageModel {
  const _$_ImageModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'thumbUrl') this.thumbUrl});

  factory _$_ImageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImageModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'thumbUrl')
  final String? thumbUrl;

  @override
  String toString() {
    return 'ImageModel(id: $id, url: $url, thumbUrl: $thumbUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ImageModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.thumbUrl, thumbUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(thumbUrl));

  @JsonKey(ignore: true)
  @override
  _$ImageModelCopyWith<_ImageModel> get copyWith =>
      __$ImageModelCopyWithImpl<_ImageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageModelToJson(this);
  }
}

abstract class _ImageModel implements ImageModel {
  const factory _ImageModel(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'thumbUrl') String? thumbUrl}) = _$_ImageModel;

  factory _ImageModel.fromJson(Map<String, dynamic> json) =
      _$_ImageModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'thumbUrl')
  String? get thumbUrl;
  @override
  @JsonKey(ignore: true)
  _$ImageModelCopyWith<_ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DiscountModel _$DiscountModelFromJson(Map<String, dynamic> json) {
  return _DiscountModel.fromJson(json);
}

/// @nodoc
class _$DiscountModelTearOff {
  const _$DiscountModelTearOff();

  _DiscountModel call(
      {@JsonKey(name: 'key') String key = '',
      @JsonKey(name: 'value') String value = ''}) {
    return _DiscountModel(
      key: key,
      value: value,
    );
  }

  DiscountModel fromJson(Map<String, Object?> json) {
    return DiscountModel.fromJson(json);
  }
}

/// @nodoc
const $DiscountModel = _$DiscountModelTearOff();

/// @nodoc
mixin _$DiscountModel {
  @JsonKey(name: 'key')
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscountModelCopyWith<DiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountModelCopyWith<$Res> {
  factory $DiscountModelCopyWith(
          DiscountModel value, $Res Function(DiscountModel) then) =
      _$DiscountModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'key') String key, @JsonKey(name: 'value') String value});
}

/// @nodoc
class _$DiscountModelCopyWithImpl<$Res>
    implements $DiscountModelCopyWith<$Res> {
  _$DiscountModelCopyWithImpl(this._value, this._then);

  final DiscountModel _value;
  // ignore: unused_field
  final $Res Function(DiscountModel) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DiscountModelCopyWith<$Res>
    implements $DiscountModelCopyWith<$Res> {
  factory _$DiscountModelCopyWith(
          _DiscountModel value, $Res Function(_DiscountModel) then) =
      __$DiscountModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'key') String key, @JsonKey(name: 'value') String value});
}

/// @nodoc
class __$DiscountModelCopyWithImpl<$Res>
    extends _$DiscountModelCopyWithImpl<$Res>
    implements _$DiscountModelCopyWith<$Res> {
  __$DiscountModelCopyWithImpl(
      _DiscountModel _value, $Res Function(_DiscountModel) _then)
      : super(_value, (v) => _then(v as _DiscountModel));

  @override
  _DiscountModel get _value => super._value as _DiscountModel;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_DiscountModel(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscountModel implements _DiscountModel {
  const _$_DiscountModel(
      {@JsonKey(name: 'key') this.key = '',
      @JsonKey(name: 'value') this.value = ''});

  factory _$_DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiscountModelFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String key;
  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'DiscountModel(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiscountModel &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$DiscountModelCopyWith<_DiscountModel> get copyWith =>
      __$DiscountModelCopyWithImpl<_DiscountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscountModelToJson(this);
  }
}

abstract class _DiscountModel implements DiscountModel {
  const factory _DiscountModel(
      {@JsonKey(name: 'key') String key,
      @JsonKey(name: 'value') String value}) = _$_DiscountModel;

  factory _DiscountModel.fromJson(Map<String, dynamic> json) =
      _$_DiscountModel.fromJson;

  @override
  @JsonKey(name: 'key')
  String get key;
  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(ignore: true)
  _$DiscountModelCopyWith<_DiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

FeatureModel _$FeatureModelFromJson(Map<String, dynamic> json) {
  return _FeatureModel.fromJson(json);
}

/// @nodoc
class _$FeatureModelTearOff {
  const _$FeatureModelTearOff();

  _FeatureModel call(
      {@JsonKey(name: 'name') String name = '',
      @JsonKey(name: 'value') String value = '',
      @JsonKey(name: 'imageURL') String? imageURL}) {
    return _FeatureModel(
      name: name,
      value: value,
      imageURL: imageURL,
    );
  }

  FeatureModel fromJson(Map<String, Object?> json) {
    return FeatureModel.fromJson(json);
  }
}

/// @nodoc
const $FeatureModel = _$FeatureModelTearOff();

/// @nodoc
mixin _$FeatureModel {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageURL')
  String? get imageURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeatureModelCopyWith<FeatureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureModelCopyWith<$Res> {
  factory $FeatureModelCopyWith(
          FeatureModel value, $Res Function(FeatureModel) then) =
      _$FeatureModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'value') String value,
      @JsonKey(name: 'imageURL') String? imageURL});
}

/// @nodoc
class _$FeatureModelCopyWithImpl<$Res> implements $FeatureModelCopyWith<$Res> {
  _$FeatureModelCopyWithImpl(this._value, this._then);

  final FeatureModel _value;
  // ignore: unused_field
  final $Res Function(FeatureModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? imageURL = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FeatureModelCopyWith<$Res>
    implements $FeatureModelCopyWith<$Res> {
  factory _$FeatureModelCopyWith(
          _FeatureModel value, $Res Function(_FeatureModel) then) =
      __$FeatureModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'value') String value,
      @JsonKey(name: 'imageURL') String? imageURL});
}

/// @nodoc
class __$FeatureModelCopyWithImpl<$Res> extends _$FeatureModelCopyWithImpl<$Res>
    implements _$FeatureModelCopyWith<$Res> {
  __$FeatureModelCopyWithImpl(
      _FeatureModel _value, $Res Function(_FeatureModel) _then)
      : super(_value, (v) => _then(v as _FeatureModel));

  @override
  _FeatureModel get _value => super._value as _FeatureModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
    Object? imageURL = freezed,
  }) {
    return _then(_FeatureModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      imageURL: imageURL == freezed
          ? _value.imageURL
          : imageURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeatureModel implements _FeatureModel {
  const _$_FeatureModel(
      {@JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'value') this.value = '',
      @JsonKey(name: 'imageURL') this.imageURL});

  factory _$_FeatureModel.fromJson(Map<String, dynamic> json) =>
      _$$_FeatureModelFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'value')
  final String value;
  @override
  @JsonKey(name: 'imageURL')
  final String? imageURL;

  @override
  String toString() {
    return 'FeatureModel(name: $name, value: $value, imageURL: $imageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeatureModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.imageURL, imageURL));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(imageURL));

  @JsonKey(ignore: true)
  @override
  _$FeatureModelCopyWith<_FeatureModel> get copyWith =>
      __$FeatureModelCopyWithImpl<_FeatureModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeatureModelToJson(this);
  }
}

abstract class _FeatureModel implements FeatureModel {
  const factory _FeatureModel(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'value') String value,
      @JsonKey(name: 'imageURL') String? imageURL}) = _$_FeatureModel;

  factory _FeatureModel.fromJson(Map<String, dynamic> json) =
      _$_FeatureModel.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(name: 'imageURL')
  String? get imageURL;
  @override
  @JsonKey(ignore: true)
  _$FeatureModelCopyWith<_FeatureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
class _$CategoryModelTearOff {
  const _$CategoryModelTearOff();

  _CategoryModel call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String name = ''}) {
    return _CategoryModel(
      id: id,
      name: name,
    );
  }

  CategoryModel fromJson(Map<String, Object?> json) {
    return CategoryModel.fromJson(json);
  }
}

/// @nodoc
const $CategoryModel = _$CategoryModelTearOff();

/// @nodoc
mixin _$CategoryModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  final CategoryModel _value;
  // ignore: unused_field
  final $Res Function(CategoryModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(
          _CategoryModel value, $Res Function(_CategoryModel) then) =
      __$CategoryModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(
      _CategoryModel _value, $Res Function(_CategoryModel) _then)
      : super(_value, (v) => _then(v as _CategoryModel));

  @override
  _CategoryModel get _value => super._value as _CategoryModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_CategoryModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryModel implements _CategoryModel {
  const _$_CategoryModel(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name = ''});

  factory _$_CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'CategoryModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$CategoryModelCopyWith<_CategoryModel> get copyWith =>
      __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryModelToJson(this);
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String name}) = _$_CategoryModel;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$CategoryModelCopyWith<_CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
class _$ProductModelTearOff {
  const _$ProductModelTearOff();

  _ProductModel call(
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'title')
          String name = '',
      @JsonKey(name: 'shortDesc')
          String shortDesc = '',
      @JsonKey(name: 'bogoPromoText')
          String bogoPromoText = '',
      @JsonKey(name: 'imageURL')
          String imageUrl = '',
      @JsonKey(name: 'imageThumbUrl')
          String imageThumbUrl = '',
      @JsonKey(name: 'secondImageURL')
          String secondImageURL = '',
      @JsonKey(name: 'secondThumbImageURL')
          String secondThumbImageURL = '',
      @JsonKey(name: 'isAddedtoWishlist')
          bool isAddedtoWishlist = false,
      @JsonKey(name: 'isOutOfStock')
          bool isOutOfStock = false,
      @JsonKey(name: 'isOutOfStockShowConfig')
          bool isOutOfStockShowConfig = false,
      @JsonKey(name: 'hasDiscount')
          bool hasDiscount = false,
      @JsonKey(name: 'preOrder')
          bool preOrder = false,
      @JsonKey(name: 'price')
          double price = 0,
      @JsonKey(name: 'finalPrice')
          double finalPrice = 0,
      @JsonKey(name: 'productDiscountList')
          List<ProductDiscountListModel>
              productDiscountList = const <ProductDiscountListModel>[]}) {
    return _ProductModel(
      id: id,
      name: name,
      shortDesc: shortDesc,
      bogoPromoText: bogoPromoText,
      imageUrl: imageUrl,
      imageThumbUrl: imageThumbUrl,
      secondImageURL: secondImageURL,
      secondThumbImageURL: secondThumbImageURL,
      isAddedtoWishlist: isAddedtoWishlist,
      isOutOfStock: isOutOfStock,
      isOutOfStockShowConfig: isOutOfStockShowConfig,
      hasDiscount: hasDiscount,
      preOrder: preOrder,
      price: price,
      finalPrice: finalPrice,
      productDiscountList: productDiscountList,
    );
  }

  ProductModel fromJson(Map<String, Object?> json) {
    return ProductModel.fromJson(json);
  }
}

/// @nodoc
const $ProductModel = _$ProductModelTearOff();

/// @nodoc
mixin _$ProductModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'shortDesc')
  String get shortDesc => throw _privateConstructorUsedError;
  @JsonKey(name: 'bogoPromoText')
  String get bogoPromoText => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageURL')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageThumbUrl')
  String get imageThumbUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondImageURL')
  String get secondImageURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondThumbImageURL')
  String get secondThumbImageURL => throw _privateConstructorUsedError;
  @JsonKey(name: 'isAddedtoWishlist')
  bool get isAddedtoWishlist => throw _privateConstructorUsedError;
  @JsonKey(name: 'isOutOfStock')
  bool get isOutOfStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'isOutOfStockShowConfig')
  bool get isOutOfStockShowConfig => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasDiscount')
  bool get hasDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'preOrder')
  bool get preOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'finalPrice')
  double get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'productDiscountList')
  List<ProductDiscountListModel> get productDiscountList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'title')
          String name,
      @JsonKey(name: 'shortDesc')
          String shortDesc,
      @JsonKey(name: 'bogoPromoText')
          String bogoPromoText,
      @JsonKey(name: 'imageURL')
          String imageUrl,
      @JsonKey(name: 'imageThumbUrl')
          String imageThumbUrl,
      @JsonKey(name: 'secondImageURL')
          String secondImageURL,
      @JsonKey(name: 'secondThumbImageURL')
          String secondThumbImageURL,
      @JsonKey(name: 'isAddedtoWishlist')
          bool isAddedtoWishlist,
      @JsonKey(name: 'isOutOfStock')
          bool isOutOfStock,
      @JsonKey(name: 'isOutOfStockShowConfig')
          bool isOutOfStockShowConfig,
      @JsonKey(name: 'hasDiscount')
          bool hasDiscount,
      @JsonKey(name: 'preOrder')
          bool preOrder,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'finalPrice')
          double finalPrice,
      @JsonKey(name: 'productDiscountList')
          List<ProductDiscountListModel> productDiscountList});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res> implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  final ProductModel _value;
  // ignore: unused_field
  final $Res Function(ProductModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? shortDesc = freezed,
    Object? bogoPromoText = freezed,
    Object? imageUrl = freezed,
    Object? imageThumbUrl = freezed,
    Object? secondImageURL = freezed,
    Object? secondThumbImageURL = freezed,
    Object? isAddedtoWishlist = freezed,
    Object? isOutOfStock = freezed,
    Object? isOutOfStockShowConfig = freezed,
    Object? hasDiscount = freezed,
    Object? preOrder = freezed,
    Object? price = freezed,
    Object? finalPrice = freezed,
    Object? productDiscountList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDesc: shortDesc == freezed
          ? _value.shortDesc
          : shortDesc // ignore: cast_nullable_to_non_nullable
              as String,
      bogoPromoText: bogoPromoText == freezed
          ? _value.bogoPromoText
          : bogoPromoText // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbUrl: imageThumbUrl == freezed
          ? _value.imageThumbUrl
          : imageThumbUrl // ignore: cast_nullable_to_non_nullable
              as String,
      secondImageURL: secondImageURL == freezed
          ? _value.secondImageURL
          : secondImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      secondThumbImageURL: secondThumbImageURL == freezed
          ? _value.secondThumbImageURL
          : secondThumbImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      isAddedtoWishlist: isAddedtoWishlist == freezed
          ? _value.isAddedtoWishlist
          : isAddedtoWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      isOutOfStock: isOutOfStock == freezed
          ? _value.isOutOfStock
          : isOutOfStock // ignore: cast_nullable_to_non_nullable
              as bool,
      isOutOfStockShowConfig: isOutOfStockShowConfig == freezed
          ? _value.isOutOfStockShowConfig
          : isOutOfStockShowConfig // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDiscount: hasDiscount == freezed
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      preOrder: preOrder == freezed
          ? _value.preOrder
          : preOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      productDiscountList: productDiscountList == freezed
          ? _value.productDiscountList
          : productDiscountList // ignore: cast_nullable_to_non_nullable
              as List<ProductDiscountListModel>,
    ));
  }
}

/// @nodoc
abstract class _$ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(
          _ProductModel value, $Res Function(_ProductModel) then) =
      __$ProductModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'title')
          String name,
      @JsonKey(name: 'shortDesc')
          String shortDesc,
      @JsonKey(name: 'bogoPromoText')
          String bogoPromoText,
      @JsonKey(name: 'imageURL')
          String imageUrl,
      @JsonKey(name: 'imageThumbUrl')
          String imageThumbUrl,
      @JsonKey(name: 'secondImageURL')
          String secondImageURL,
      @JsonKey(name: 'secondThumbImageURL')
          String secondThumbImageURL,
      @JsonKey(name: 'isAddedtoWishlist')
          bool isAddedtoWishlist,
      @JsonKey(name: 'isOutOfStock')
          bool isOutOfStock,
      @JsonKey(name: 'isOutOfStockShowConfig')
          bool isOutOfStockShowConfig,
      @JsonKey(name: 'hasDiscount')
          bool hasDiscount,
      @JsonKey(name: 'preOrder')
          bool preOrder,
      @JsonKey(name: 'price')
          double price,
      @JsonKey(name: 'finalPrice')
          double finalPrice,
      @JsonKey(name: 'productDiscountList')
          List<ProductDiscountListModel> productDiscountList});
}

/// @nodoc
class __$ProductModelCopyWithImpl<$Res> extends _$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(
      _ProductModel _value, $Res Function(_ProductModel) _then)
      : super(_value, (v) => _then(v as _ProductModel));

  @override
  _ProductModel get _value => super._value as _ProductModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? shortDesc = freezed,
    Object? bogoPromoText = freezed,
    Object? imageUrl = freezed,
    Object? imageThumbUrl = freezed,
    Object? secondImageURL = freezed,
    Object? secondThumbImageURL = freezed,
    Object? isAddedtoWishlist = freezed,
    Object? isOutOfStock = freezed,
    Object? isOutOfStockShowConfig = freezed,
    Object? hasDiscount = freezed,
    Object? preOrder = freezed,
    Object? price = freezed,
    Object? finalPrice = freezed,
    Object? productDiscountList = freezed,
  }) {
    return _then(_ProductModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortDesc: shortDesc == freezed
          ? _value.shortDesc
          : shortDesc // ignore: cast_nullable_to_non_nullable
              as String,
      bogoPromoText: bogoPromoText == freezed
          ? _value.bogoPromoText
          : bogoPromoText // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbUrl: imageThumbUrl == freezed
          ? _value.imageThumbUrl
          : imageThumbUrl // ignore: cast_nullable_to_non_nullable
              as String,
      secondImageURL: secondImageURL == freezed
          ? _value.secondImageURL
          : secondImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      secondThumbImageURL: secondThumbImageURL == freezed
          ? _value.secondThumbImageURL
          : secondThumbImageURL // ignore: cast_nullable_to_non_nullable
              as String,
      isAddedtoWishlist: isAddedtoWishlist == freezed
          ? _value.isAddedtoWishlist
          : isAddedtoWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      isOutOfStock: isOutOfStock == freezed
          ? _value.isOutOfStock
          : isOutOfStock // ignore: cast_nullable_to_non_nullable
              as bool,
      isOutOfStockShowConfig: isOutOfStockShowConfig == freezed
          ? _value.isOutOfStockShowConfig
          : isOutOfStockShowConfig // ignore: cast_nullable_to_non_nullable
              as bool,
      hasDiscount: hasDiscount == freezed
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      preOrder: preOrder == freezed
          ? _value.preOrder
          : preOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      finalPrice: finalPrice == freezed
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      productDiscountList: productDiscountList == freezed
          ? _value.productDiscountList
          : productDiscountList // ignore: cast_nullable_to_non_nullable
              as List<ProductDiscountListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel implements _ProductModel {
  const _$_ProductModel(
      {@JsonKey(name: 'id')
          this.id,
      @JsonKey(name: 'title')
          this.name = '',
      @JsonKey(name: 'shortDesc')
          this.shortDesc = '',
      @JsonKey(name: 'bogoPromoText')
          this.bogoPromoText = '',
      @JsonKey(name: 'imageURL')
          this.imageUrl = '',
      @JsonKey(name: 'imageThumbUrl')
          this.imageThumbUrl = '',
      @JsonKey(name: 'secondImageURL')
          this.secondImageURL = '',
      @JsonKey(name: 'secondThumbImageURL')
          this.secondThumbImageURL = '',
      @JsonKey(name: 'isAddedtoWishlist')
          this.isAddedtoWishlist = false,
      @JsonKey(name: 'isOutOfStock')
          this.isOutOfStock = false,
      @JsonKey(name: 'isOutOfStockShowConfig')
          this.isOutOfStockShowConfig = false,
      @JsonKey(name: 'hasDiscount')
          this.hasDiscount = false,
      @JsonKey(name: 'preOrder')
          this.preOrder = false,
      @JsonKey(name: 'price')
          this.price = 0,
      @JsonKey(name: 'finalPrice')
          this.finalPrice = 0,
      @JsonKey(name: 'productDiscountList')
          this.productDiscountList = const <ProductDiscountListModel>[]});

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String name;
  @override
  @JsonKey(name: 'shortDesc')
  final String shortDesc;
  @override
  @JsonKey(name: 'bogoPromoText')
  final String bogoPromoText;
  @override
  @JsonKey(name: 'imageURL')
  final String imageUrl;
  @override
  @JsonKey(name: 'imageThumbUrl')
  final String imageThumbUrl;
  @override
  @JsonKey(name: 'secondImageURL')
  final String secondImageURL;
  @override
  @JsonKey(name: 'secondThumbImageURL')
  final String secondThumbImageURL;
  @override
  @JsonKey(name: 'isAddedtoWishlist')
  final bool isAddedtoWishlist;
  @override
  @JsonKey(name: 'isOutOfStock')
  final bool isOutOfStock;
  @override
  @JsonKey(name: 'isOutOfStockShowConfig')
  final bool isOutOfStockShowConfig;
  @override
  @JsonKey(name: 'hasDiscount')
  final bool hasDiscount;
  @override
  @JsonKey(name: 'preOrder')
  final bool preOrder;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'finalPrice')
  final double finalPrice;
  @override
  @JsonKey(name: 'productDiscountList')
  final List<ProductDiscountListModel> productDiscountList;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, shortDesc: $shortDesc, bogoPromoText: $bogoPromoText, imageUrl: $imageUrl, imageThumbUrl: $imageThumbUrl, secondImageURL: $secondImageURL, secondThumbImageURL: $secondThumbImageURL, isAddedtoWishlist: $isAddedtoWishlist, isOutOfStock: $isOutOfStock, isOutOfStockShowConfig: $isOutOfStockShowConfig, hasDiscount: $hasDiscount, preOrder: $preOrder, price: $price, finalPrice: $finalPrice, productDiscountList: $productDiscountList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.shortDesc, shortDesc) &&
            const DeepCollectionEquality()
                .equals(other.bogoPromoText, bogoPromoText) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.imageThumbUrl, imageThumbUrl) &&
            const DeepCollectionEquality()
                .equals(other.secondImageURL, secondImageURL) &&
            const DeepCollectionEquality()
                .equals(other.secondThumbImageURL, secondThumbImageURL) &&
            const DeepCollectionEquality()
                .equals(other.isAddedtoWishlist, isAddedtoWishlist) &&
            const DeepCollectionEquality()
                .equals(other.isOutOfStock, isOutOfStock) &&
            const DeepCollectionEquality()
                .equals(other.isOutOfStockShowConfig, isOutOfStockShowConfig) &&
            const DeepCollectionEquality()
                .equals(other.hasDiscount, hasDiscount) &&
            const DeepCollectionEquality().equals(other.preOrder, preOrder) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.finalPrice, finalPrice) &&
            const DeepCollectionEquality()
                .equals(other.productDiscountList, productDiscountList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(shortDesc),
      const DeepCollectionEquality().hash(bogoPromoText),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(imageThumbUrl),
      const DeepCollectionEquality().hash(secondImageURL),
      const DeepCollectionEquality().hash(secondThumbImageURL),
      const DeepCollectionEquality().hash(isAddedtoWishlist),
      const DeepCollectionEquality().hash(isOutOfStock),
      const DeepCollectionEquality().hash(isOutOfStockShowConfig),
      const DeepCollectionEquality().hash(hasDiscount),
      const DeepCollectionEquality().hash(preOrder),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(finalPrice),
      const DeepCollectionEquality().hash(productDiscountList));

  @JsonKey(ignore: true)
  @override
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(this);
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
          {@JsonKey(name: 'id')
              int? id,
          @JsonKey(name: 'title')
              String name,
          @JsonKey(name: 'shortDesc')
              String shortDesc,
          @JsonKey(name: 'bogoPromoText')
              String bogoPromoText,
          @JsonKey(name: 'imageURL')
              String imageUrl,
          @JsonKey(name: 'imageThumbUrl')
              String imageThumbUrl,
          @JsonKey(name: 'secondImageURL')
              String secondImageURL,
          @JsonKey(name: 'secondThumbImageURL')
              String secondThumbImageURL,
          @JsonKey(name: 'isAddedtoWishlist')
              bool isAddedtoWishlist,
          @JsonKey(name: 'isOutOfStock')
              bool isOutOfStock,
          @JsonKey(name: 'isOutOfStockShowConfig')
              bool isOutOfStockShowConfig,
          @JsonKey(name: 'hasDiscount')
              bool hasDiscount,
          @JsonKey(name: 'preOrder')
              bool preOrder,
          @JsonKey(name: 'price')
              double price,
          @JsonKey(name: 'finalPrice')
              double finalPrice,
          @JsonKey(name: 'productDiscountList')
              List<ProductDiscountListModel> productDiscountList}) =
      _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String get name;
  @override
  @JsonKey(name: 'shortDesc')
  String get shortDesc;
  @override
  @JsonKey(name: 'bogoPromoText')
  String get bogoPromoText;
  @override
  @JsonKey(name: 'imageURL')
  String get imageUrl;
  @override
  @JsonKey(name: 'imageThumbUrl')
  String get imageThumbUrl;
  @override
  @JsonKey(name: 'secondImageURL')
  String get secondImageURL;
  @override
  @JsonKey(name: 'secondThumbImageURL')
  String get secondThumbImageURL;
  @override
  @JsonKey(name: 'isAddedtoWishlist')
  bool get isAddedtoWishlist;
  @override
  @JsonKey(name: 'isOutOfStock')
  bool get isOutOfStock;
  @override
  @JsonKey(name: 'isOutOfStockShowConfig')
  bool get isOutOfStockShowConfig;
  @override
  @JsonKey(name: 'hasDiscount')
  bool get hasDiscount;
  @override
  @JsonKey(name: 'preOrder')
  bool get preOrder;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'finalPrice')
  double get finalPrice;
  @override
  @JsonKey(name: 'productDiscountList')
  List<ProductDiscountListModel> get productDiscountList;
  @override
  @JsonKey(ignore: true)
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDiscountListModel _$ProductDiscountListModelFromJson(
    Map<String, dynamic> json) {
  return _ProductDiscountListModel.fromJson(json);
}

/// @nodoc
class _$ProductDiscountListModelTearOff {
  const _$ProductDiscountListModelTearOff();

  _ProductDiscountListModel call(
      {@JsonKey(name: 'key') String key = '',
      @JsonKey(name: 'value') String value = ''}) {
    return _ProductDiscountListModel(
      key: key,
      value: value,
    );
  }

  ProductDiscountListModel fromJson(Map<String, Object?> json) {
    return ProductDiscountListModel.fromJson(json);
  }
}

/// @nodoc
const $ProductDiscountListModel = _$ProductDiscountListModelTearOff();

/// @nodoc
mixin _$ProductDiscountListModel {
  @JsonKey(name: 'key')
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDiscountListModelCopyWith<ProductDiscountListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDiscountListModelCopyWith<$Res> {
  factory $ProductDiscountListModelCopyWith(ProductDiscountListModel value,
          $Res Function(ProductDiscountListModel) then) =
      _$ProductDiscountListModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'key') String key, @JsonKey(name: 'value') String value});
}

/// @nodoc
class _$ProductDiscountListModelCopyWithImpl<$Res>
    implements $ProductDiscountListModelCopyWith<$Res> {
  _$ProductDiscountListModelCopyWithImpl(this._value, this._then);

  final ProductDiscountListModel _value;
  // ignore: unused_field
  final $Res Function(ProductDiscountListModel) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductDiscountListModelCopyWith<$Res>
    implements $ProductDiscountListModelCopyWith<$Res> {
  factory _$ProductDiscountListModelCopyWith(_ProductDiscountListModel value,
          $Res Function(_ProductDiscountListModel) then) =
      __$ProductDiscountListModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'key') String key, @JsonKey(name: 'value') String value});
}

/// @nodoc
class __$ProductDiscountListModelCopyWithImpl<$Res>
    extends _$ProductDiscountListModelCopyWithImpl<$Res>
    implements _$ProductDiscountListModelCopyWith<$Res> {
  __$ProductDiscountListModelCopyWithImpl(_ProductDiscountListModel _value,
      $Res Function(_ProductDiscountListModel) _then)
      : super(_value, (v) => _then(v as _ProductDiscountListModel));

  @override
  _ProductDiscountListModel get _value =>
      super._value as _ProductDiscountListModel;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_ProductDiscountListModel(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDiscountListModel implements _ProductDiscountListModel {
  const _$_ProductDiscountListModel(
      {@JsonKey(name: 'key') this.key = '',
      @JsonKey(name: 'value') this.value = ''});

  factory _$_ProductDiscountListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDiscountListModelFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String key;
  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'ProductDiscountListModel(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDiscountListModel &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ProductDiscountListModelCopyWith<_ProductDiscountListModel> get copyWith =>
      __$ProductDiscountListModelCopyWithImpl<_ProductDiscountListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDiscountListModelToJson(this);
  }
}

abstract class _ProductDiscountListModel implements ProductDiscountListModel {
  const factory _ProductDiscountListModel(
      {@JsonKey(name: 'key') String key,
      @JsonKey(name: 'value') String value}) = _$_ProductDiscountListModel;

  factory _ProductDiscountListModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDiscountListModel.fromJson;

  @override
  @JsonKey(name: 'key')
  String get key;
  @override
  @JsonKey(name: 'value')
  String get value;
  @override
  @JsonKey(ignore: true)
  _$ProductDiscountListModelCopyWith<_ProductDiscountListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtraDto _$ExtraDtoFromJson(Map<String, dynamic> json) {
  return _ExtraDto.fromJson(json);
}

/// @nodoc
class _$ExtraDtoTearOff {
  const _$ExtraDtoTearOff();

  _ExtraDto call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'title') String title = '',
      @JsonKey(name: 'price') double price = 0,
      @JsonKey(name: 'qty') int qty = 0,
      @JsonKey(name: 'isOption') bool isOption = false,
      @JsonKey(name: 'extrasLocalizes') ExtrasLocalizes? extrasLocalizes}) {
    return _ExtraDto(
      id: id,
      title: title,
      price: price,
      qty: qty,
      isOption: isOption,
      extrasLocalizes: extrasLocalizes,
    );
  }

  ExtraDto fromJson(Map<String, Object?> json) {
    return ExtraDto.fromJson(json);
  }
}

/// @nodoc
const $ExtraDto = _$ExtraDtoTearOff();

/// @nodoc
mixin _$ExtraDto {
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'qty')
  int get qty => throw _privateConstructorUsedError;
  @JsonKey(name: 'isOption')
  bool get isOption => throw _privateConstructorUsedError;
  @JsonKey(name: 'extrasLocalizes')
  ExtrasLocalizes? get extrasLocalizes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtraDtoCopyWith<ExtraDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraDtoCopyWith<$Res> {
  factory $ExtraDtoCopyWith(ExtraDto value, $Res Function(ExtraDto) then) =
      _$ExtraDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'qty') int qty,
      @JsonKey(name: 'isOption') bool isOption,
      @JsonKey(name: 'extrasLocalizes') ExtrasLocalizes? extrasLocalizes});

  $ExtrasLocalizesCopyWith<$Res>? get extrasLocalizes;
}

/// @nodoc
class _$ExtraDtoCopyWithImpl<$Res> implements $ExtraDtoCopyWith<$Res> {
  _$ExtraDtoCopyWithImpl(this._value, this._then);

  final ExtraDto _value;
  // ignore: unused_field
  final $Res Function(ExtraDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? qty = freezed,
    Object? isOption = freezed,
    Object? extrasLocalizes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      isOption: isOption == freezed
          ? _value.isOption
          : isOption // ignore: cast_nullable_to_non_nullable
              as bool,
      extrasLocalizes: extrasLocalizes == freezed
          ? _value.extrasLocalizes
          : extrasLocalizes // ignore: cast_nullable_to_non_nullable
              as ExtrasLocalizes?,
    ));
  }

  @override
  $ExtrasLocalizesCopyWith<$Res>? get extrasLocalizes {
    if (_value.extrasLocalizes == null) {
      return null;
    }

    return $ExtrasLocalizesCopyWith<$Res>(_value.extrasLocalizes!, (value) {
      return _then(_value.copyWith(extrasLocalizes: value));
    });
  }
}

/// @nodoc
abstract class _$ExtraDtoCopyWith<$Res> implements $ExtraDtoCopyWith<$Res> {
  factory _$ExtraDtoCopyWith(_ExtraDto value, $Res Function(_ExtraDto) then) =
      __$ExtraDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ID') int? id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'price') double price,
      @JsonKey(name: 'qty') int qty,
      @JsonKey(name: 'isOption') bool isOption,
      @JsonKey(name: 'extrasLocalizes') ExtrasLocalizes? extrasLocalizes});

  @override
  $ExtrasLocalizesCopyWith<$Res>? get extrasLocalizes;
}

/// @nodoc
class __$ExtraDtoCopyWithImpl<$Res> extends _$ExtraDtoCopyWithImpl<$Res>
    implements _$ExtraDtoCopyWith<$Res> {
  __$ExtraDtoCopyWithImpl(_ExtraDto _value, $Res Function(_ExtraDto) _then)
      : super(_value, (v) => _then(v as _ExtraDto));

  @override
  _ExtraDto get _value => super._value as _ExtraDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? qty = freezed,
    Object? isOption = freezed,
    Object? extrasLocalizes = freezed,
  }) {
    return _then(_ExtraDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      isOption: isOption == freezed
          ? _value.isOption
          : isOption // ignore: cast_nullable_to_non_nullable
              as bool,
      extrasLocalizes: extrasLocalizes == freezed
          ? _value.extrasLocalizes
          : extrasLocalizes // ignore: cast_nullable_to_non_nullable
              as ExtrasLocalizes?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExtraDto implements _ExtraDto {
  const _$_ExtraDto(
      {@JsonKey(name: 'ID') this.id,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'price') this.price = 0,
      @JsonKey(name: 'qty') this.qty = 0,
      @JsonKey(name: 'isOption') this.isOption = false,
      @JsonKey(name: 'extrasLocalizes') this.extrasLocalizes});

  factory _$_ExtraDto.fromJson(Map<String, dynamic> json) =>
      _$$_ExtraDtoFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'price')
  final double price;
  @override
  @JsonKey(name: 'qty')
  final int qty;
  @override
  @JsonKey(name: 'isOption')
  final bool isOption;
  @override
  @JsonKey(name: 'extrasLocalizes')
  final ExtrasLocalizes? extrasLocalizes;

  @override
  String toString() {
    return 'ExtraDto(id: $id, title: $title, price: $price, qty: $qty, isOption: $isOption, extrasLocalizes: $extrasLocalizes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExtraDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.isOption, isOption) &&
            const DeepCollectionEquality()
                .equals(other.extrasLocalizes, extrasLocalizes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(isOption),
      const DeepCollectionEquality().hash(extrasLocalizes));

  @JsonKey(ignore: true)
  @override
  _$ExtraDtoCopyWith<_ExtraDto> get copyWith =>
      __$ExtraDtoCopyWithImpl<_ExtraDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExtraDtoToJson(this);
  }
}

abstract class _ExtraDto implements ExtraDto {
  const factory _ExtraDto(
          {@JsonKey(name: 'ID') int? id,
          @JsonKey(name: 'title') String title,
          @JsonKey(name: 'price') double price,
          @JsonKey(name: 'qty') int qty,
          @JsonKey(name: 'isOption') bool isOption,
          @JsonKey(name: 'extrasLocalizes') ExtrasLocalizes? extrasLocalizes}) =
      _$_ExtraDto;

  factory _ExtraDto.fromJson(Map<String, dynamic> json) = _$_ExtraDto.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'price')
  double get price;
  @override
  @JsonKey(name: 'qty')
  int get qty;
  @override
  @JsonKey(name: 'isOption')
  bool get isOption;
  @override
  @JsonKey(name: 'extrasLocalizes')
  ExtrasLocalizes? get extrasLocalizes;
  @override
  @JsonKey(ignore: true)
  _$ExtraDtoCopyWith<_ExtraDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtrasLocalizes _$ExtrasLocalizesFromJson(Map<String, dynamic> json) {
  return _ExtrasLocalizes.fromJson(json);
}

/// @nodoc
class _$ExtrasLocalizesTearOff {
  const _$ExtrasLocalizesTearOff();

  _ExtrasLocalizes call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String title = '',
      @JsonKey(name: 'languageID') int languageID = 1}) {
    return _ExtrasLocalizes(
      id: id,
      title: title,
      languageID: languageID,
    );
  }

  ExtrasLocalizes fromJson(Map<String, Object?> json) {
    return ExtrasLocalizes.fromJson(json);
  }
}

/// @nodoc
const $ExtrasLocalizes = _$ExtrasLocalizesTearOff();

/// @nodoc
mixin _$ExtrasLocalizes {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'languageID')
  int get languageID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtrasLocalizesCopyWith<ExtrasLocalizes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtrasLocalizesCopyWith<$Res> {
  factory $ExtrasLocalizesCopyWith(
          ExtrasLocalizes value, $Res Function(ExtrasLocalizes) then) =
      _$ExtrasLocalizesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'languageID') int languageID});
}

/// @nodoc
class _$ExtrasLocalizesCopyWithImpl<$Res>
    implements $ExtrasLocalizesCopyWith<$Res> {
  _$ExtrasLocalizesCopyWithImpl(this._value, this._then);

  final ExtrasLocalizes _value;
  // ignore: unused_field
  final $Res Function(ExtrasLocalizes) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? languageID = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      languageID: languageID == freezed
          ? _value.languageID
          : languageID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ExtrasLocalizesCopyWith<$Res>
    implements $ExtrasLocalizesCopyWith<$Res> {
  factory _$ExtrasLocalizesCopyWith(
          _ExtrasLocalizes value, $Res Function(_ExtrasLocalizes) then) =
      __$ExtrasLocalizesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'languageID') int languageID});
}

/// @nodoc
class __$ExtrasLocalizesCopyWithImpl<$Res>
    extends _$ExtrasLocalizesCopyWithImpl<$Res>
    implements _$ExtrasLocalizesCopyWith<$Res> {
  __$ExtrasLocalizesCopyWithImpl(
      _ExtrasLocalizes _value, $Res Function(_ExtrasLocalizes) _then)
      : super(_value, (v) => _then(v as _ExtrasLocalizes));

  @override
  _ExtrasLocalizes get _value => super._value as _ExtrasLocalizes;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? languageID = freezed,
  }) {
    return _then(_ExtrasLocalizes(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      languageID: languageID == freezed
          ? _value.languageID
          : languageID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExtrasLocalizes implements _ExtrasLocalizes {
  const _$_ExtrasLocalizes(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'languageID') this.languageID = 1});

  factory _$_ExtrasLocalizes.fromJson(Map<String, dynamic> json) =>
      _$$_ExtrasLocalizesFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'languageID')
  final int languageID;

  @override
  String toString() {
    return 'ExtrasLocalizes(id: $id, title: $title, languageID: $languageID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExtrasLocalizes &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.languageID, languageID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(languageID));

  @JsonKey(ignore: true)
  @override
  _$ExtrasLocalizesCopyWith<_ExtrasLocalizes> get copyWith =>
      __$ExtrasLocalizesCopyWithImpl<_ExtrasLocalizes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExtrasLocalizesToJson(this);
  }
}

abstract class _ExtrasLocalizes implements ExtrasLocalizes {
  const factory _ExtrasLocalizes(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'languageID') int languageID}) = _$_ExtrasLocalizes;

  factory _ExtrasLocalizes.fromJson(Map<String, dynamic> json) =
      _$_ExtrasLocalizes.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'languageID')
  int get languageID;
  @override
  @JsonKey(ignore: true)
  _$ExtrasLocalizesCopyWith<_ExtrasLocalizes> get copyWith =>
      throw _privateConstructorUsedError;
}
