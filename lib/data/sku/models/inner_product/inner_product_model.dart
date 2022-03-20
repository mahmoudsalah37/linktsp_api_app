// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'inner_product_model.freezed.dart';
part 'inner_product_model.g.dart';

@freezed
class InnerProductModel with _$InnerProductModel {
  const factory InnerProductModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'brand') BrandModel? brands,
    @Default('') @JsonKey(name: 'title') String title,
    @Default(0) @JsonKey(name: 'averageRating') double averageRating,
    @Default(<SizeModel?>[]) @JsonKey(name: 'sizes') List<SizeModel?> sizes,
    @Default(<ColorModel?>[]) @JsonKey(name: 'colors') List<ColorModel?> colors,
    @Default(<SkuModel?>[]) @JsonKey(name: 'skUs') List<SkuModel?> skus,
    @Default('') @JsonKey(name: 'details') String details,
    @Default('') @JsonKey(name: 'shortDescription') String description,
    @Default(false) @JsonKey(name: 'showSizeChart') bool isShowSizeChart,
    @JsonKey(name: 'sizeChartImageURL') String? sizeGuide,
    @Default(false) @JsonKey(name: 'showOneClickOrder') bool showOneClickOrder,
    @Default(false) @JsonKey(name: 'preOrder') bool preOrder,
    @Default(false) @JsonKey(name: 'isWishList') bool isAddedtoWishlist,
    @Default(0) @JsonKey(name: 'minDeliveryPeriod') int minDeliveryPeriod,
    @Default(0) @JsonKey(name: 'maxDeliveryPeriod') int maxDeliveryPeriod,
    @Default('') @JsonKey(name: 'periodName') String periodName,
    @Default('') @JsonKey(name: 'deliveryNote') String deliveryNote,
    @Default('') @JsonKey(name: 'bogoPromoText') String bogoPromoText,
    @JsonKey(name: 'reviews') ReviewUserCommentModel? review,
    @Default(<FeatureModel?>[])
    @JsonKey(name: 'features')
        List<FeatureModel?> features,
    @Default(<CategoryModel>[])
    @JsonKey(name: 'productCategories')
        List<CategoryModel> categories,
    @Default(<ProductModel>[])
    @JsonKey(name: 'recentItems')
        List<ProductModel> recentItems,
    @Default(<ProductModel>[])
    @JsonKey(name: 'relatedItems')
        List<ProductModel> relatedItems,
    @Default(false) @JsonKey(name: 'allowRating') bool isEnableAddReview,
  }) = _InnerProductModel;

  factory InnerProductModel.fromJson(Map<String, dynamic> json) =>
      _$InnerProductModelFromJson(json);
}

@freezed
class ReviewUserCommentModel with _$ReviewUserCommentModel {
  const factory ReviewUserCommentModel({
    @Default(<ItemReviewModel>[])
    @JsonKey(name: 'items')
        List<ItemReviewModel> items,
  }) = _ReviewUserCommentModel;

  factory ReviewUserCommentModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewUserCommentModelFromJson(json);
}

@freezed
class ItemReviewModel with _$ItemReviewModel {
  const factory ItemReviewModel({
    @JsonKey(name: 'id') int? id,
    @Default('') @JsonKey(name: 'description') String description,
    @Default('') @JsonKey(name: 'productCode') String productCode,
    @Default('') @JsonKey(name: 'customerName') String customerName,
    @Default('') @JsonKey(name: 'date') String date,
    @Default(0) @JsonKey(name: 'rating') double rating,
  }) = _ItemReviewModel;

  factory ItemReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ItemReviewModelFromJson(json);
}

@freezed
class BrandModel with _$BrandModel {
  const factory BrandModel({
    @JsonKey(name: 'id') int? id,
    @Default('') @JsonKey(name: 'name') String name,
  }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);
}

@freezed
class SizeModel with _$SizeModel {
  const factory SizeModel({
    @JsonKey(name: 'id') int? id,
    @Default('') @JsonKey(name: 'name') String name,
  }) = _SizeModel;

  factory SizeModel.fromJson(Map<String, dynamic> json) =>
      _$SizeModelFromJson(json);
}

@freezed
class ColorModel with _$ColorModel {
  const factory ColorModel({
    @JsonKey(name: 'id') int? id,
    @Default('') @JsonKey(name: 'name') String name,
    @JsonKey(name: 'hexa') String? hexa,
    @JsonKey(name: 'croppedImageURL') String? thumbnail,
    @Default(false) @JsonKey(name: 'enableCropping') bool? enableCropping,
  }) = _ColorModel;

  factory ColorModel.fromJson(Map<String, dynamic> json) =>
      _$ColorModelFromJson(json);
}

@freezed
class SkuModel with _$SkuModel {
  const factory SkuModel({
    @JsonKey(name: 'id') int? id,
    @Default('') @JsonKey(name: 'sku') String skuCode,
    @Default(0) @JsonKey(name: 'price') double defaultPrice,
    @Default(0) @JsonKey(name: 'finalPrice') double finalPrice,
    @JsonKey(name: 'colorID') int? colorId,
    @JsonKey(name: 'sizeID') int? sizeId,
    @Default(<ImageModel?>[]) @JsonKey(name: 'images') List<ImageModel?> images,
    @Default(<DiscountModel?>[])
    @JsonKey(name: 'productDiscountList')
        List<DiscountModel?> discounts,
    @Default(false) @JsonKey(name: 'hasDiscount') bool hasDiscount,
    @Default(0) @JsonKey(name: 'maxQty') int maxQuantity,
    @Default(false) @JsonKey(name: 'isAvaliable') bool isAvaliable,
    @Default(0) @JsonKey(name: 'quantityLeft') int quantityInStock,
  }) = _SkuModel;

  factory SkuModel.fromJson(Map<String, dynamic> json) =>
      _$SkuModelFromJson(json);
}

@freezed
class ImageModel with _$ImageModel {
  const factory ImageModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'thumbUrl') String? thumbUrl,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}

@freezed
class DiscountModel with _$DiscountModel {
  const factory DiscountModel({
    @Default('') @JsonKey(name: 'key') String key,
    @Default('') @JsonKey(name: 'value') String value,
  }) = _DiscountModel;

  factory DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountModelFromJson(json);
}

@freezed
class FeatureModel with _$FeatureModel {
  const factory FeatureModel({
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'value') String value,
    @JsonKey(name: 'imageURL') String? imageURL,
  }) = _FeatureModel;

  factory FeatureModel.fromJson(Map<String, dynamic> json) =>
      _$FeatureModelFromJson(json);
}

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @JsonKey(name: 'id') int? id,
    @Default('') @JsonKey(name: 'name') String name,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @JsonKey(name: 'id') int? id,
    @Default('') @JsonKey(name: 'title') String name,
    @Default('') @JsonKey(name: 'shortDesc') String shortDesc,
    @Default('') @JsonKey(name: 'bogoPromoText') String bogoPromoText,
    @Default('') @JsonKey(name: 'imageURL') String imageUrl,
    @Default('') @JsonKey(name: 'imageThumbUrl') String imageThumbUrl,
    @Default('') @JsonKey(name: 'secondImageURL') String secondImageURL,
    @Default('')
    @JsonKey(name: 'secondThumbImageURL')
        String secondThumbImageURL,
    @Default(false) @JsonKey(name: 'isAddedtoWishlist') bool isAddedtoWishlist,
    @Default(false) @JsonKey(name: 'isOutOfStock') bool isOutOfStock,
    @Default(false)
    @JsonKey(name: 'isOutOfStockShowConfig')
        bool isOutOfStockShowConfig,
    @Default(false) @JsonKey(name: 'hasDiscount') bool hasDiscount,
    @Default(false) @JsonKey(name: 'preOrder') bool preOrder,
    @Default(0) @JsonKey(name: 'price') double price,
    @Default(0) @JsonKey(name: 'finalPrice') double finalPrice,
    @Default(<ProductDiscountListModel>[])
    @JsonKey(name: 'productDiscountList')
        List<ProductDiscountListModel> productDiscountList,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ProductDiscountListModel with _$ProductDiscountListModel {
  const factory ProductDiscountListModel({
    @Default('') @JsonKey(name: 'key') String key,
    @Default('') @JsonKey(name: 'value') String value,
  }) = _ProductDiscountListModel;

  factory ProductDiscountListModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDiscountListModelFromJson(json);
}
