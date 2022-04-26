// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inner_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InnerProductModel _$$_InnerProductModelFromJson(Map<String, dynamic> json) =>
    _$_InnerProductModel(
      id: json['id'] as int?,
      code: json['code'] as String?,
      brands: json['brand'] == null
          ? null
          : BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      title: json['title'] as String? ?? '',
      averageRating: (json['averageRating'] as num?)?.toDouble() ?? 0,
      sizes: (json['sizes'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : SizeModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SizeModel?>[],
      colors: (json['colors'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : ColorModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ColorModel?>[],
      skus: (json['skUs'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : SkuModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SkuModel?>[],
      details: json['details'] as String? ?? '',
      description: json['shortDescription'] as String? ?? '',
      isShowSizeChart: json['showSizeChart'] as bool? ?? false,
      sizeGuide: json['sizeChartImageURL'] as String?,
      showOneClickOrder: json['showOneClickOrder'] as bool? ?? false,
      isAddedtoWishlist: json['isWishList'] as bool? ?? false,
      minDeliveryPeriod: json['minDeliveryPeriod'] as int? ?? 0,
      maxDeliveryPeriod: json['maxDeliveryPeriod'] as int? ?? 0,
      periodName: json['periodName'] as String? ?? '',
      deliveryNote: json['deliveryNote'] as String? ?? '',
      bogoPromoText: json['bogoPromoText'] as String? ?? '',
      review: json['reviews'] == null
          ? null
          : ReviewUserCommentModel.fromJson(
              json['reviews'] as Map<String, dynamic>),
      features: (json['features'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : FeatureModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FeatureModel?>[],
      categories: (json['productCategories'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CategoryModel>[],
      recentItems: (json['recentItems'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductModel>[],
      relatedItems: (json['relatedItems'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductModel>[],
      isEnableAddReview: json['allowRating'] as bool? ?? false,
      allPricesIncludeVATDetails:
          json['allPricesIincludeVATDetails'] as String? ?? '',
    );

Map<String, dynamic> _$$_InnerProductModelToJson(
        _$_InnerProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'brand': instance.brands,
      'title': instance.title,
      'averageRating': instance.averageRating,
      'sizes': instance.sizes,
      'colors': instance.colors,
      'skUs': instance.skus,
      'details': instance.details,
      'shortDescription': instance.description,
      'showSizeChart': instance.isShowSizeChart,
      'sizeChartImageURL': instance.sizeGuide,
      'showOneClickOrder': instance.showOneClickOrder,
      'isWishList': instance.isAddedtoWishlist,
      'minDeliveryPeriod': instance.minDeliveryPeriod,
      'maxDeliveryPeriod': instance.maxDeliveryPeriod,
      'periodName': instance.periodName,
      'deliveryNote': instance.deliveryNote,
      'bogoPromoText': instance.bogoPromoText,
      'reviews': instance.review,
      'features': instance.features,
      'productCategories': instance.categories,
      'recentItems': instance.recentItems,
      'relatedItems': instance.relatedItems,
      'allowRating': instance.isEnableAddReview,
      'allPricesIincludeVATDetails': instance.allPricesIncludeVATDetails,
    };

_$_ReviewUserCommentModel _$$_ReviewUserCommentModelFromJson(
        Map<String, dynamic> json) =>
    _$_ReviewUserCommentModel(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ItemReviewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ItemReviewModel>[],
    );

Map<String, dynamic> _$$_ReviewUserCommentModelToJson(
        _$_ReviewUserCommentModel instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$_ItemReviewModel _$$_ItemReviewModelFromJson(Map<String, dynamic> json) =>
    _$_ItemReviewModel(
      id: json['id'] as int?,
      description: json['description'] as String? ?? '',
      productCode: json['productCode'] as String? ?? '',
      customerName: json['customerName'] as String? ?? '',
      date: json['date'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_ItemReviewModelToJson(_$_ItemReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'productCode': instance.productCode,
      'customerName': instance.customerName,
      'date': instance.date,
      'rating': instance.rating,
    };

_$_BrandModel _$$_BrandModelFromJson(Map<String, dynamic> json) =>
    _$_BrandModel(
      id: json['id'] as int?,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_BrandModelToJson(_$_BrandModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_SizeModel _$$_SizeModelFromJson(Map<String, dynamic> json) => _$_SizeModel(
      id: json['id'] as int?,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_SizeModelToJson(_$_SizeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_ColorModel _$$_ColorModelFromJson(Map<String, dynamic> json) =>
    _$_ColorModel(
      id: json['id'] as int?,
      name: json['name'] as String? ?? '',
      hexa: json['hexa'] as String?,
      thumbnail: json['croppedImageURL'] as String?,
      enableCropping: json['enableCropping'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ColorModelToJson(_$_ColorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hexa': instance.hexa,
      'croppedImageURL': instance.thumbnail,
      'enableCropping': instance.enableCropping,
    };

_$_SkuModel _$$_SkuModelFromJson(Map<String, dynamic> json) => _$_SkuModel(
      id: json['id'] as int?,
      preOrder: json['preOrder'] as bool? ?? false,
      skuCode: json['sku'] as String? ?? '',
      availabilityDate: json['availabilityDate'] as String? ?? '',
      defaultPrice: (json['price'] as num?)?.toDouble() ?? 0,
      finalPrice: (json['finalPrice'] as num?)?.toDouble() ?? 0,
      colorId: json['colorID'] as int?,
      sizeId: json['sizeID'] as int?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : ImageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ImageModel?>[],
      discounts: (json['productDiscountList'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : DiscountModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DiscountModel?>[],
      hasDiscount: json['hasDiscount'] as bool? ?? false,
      maxQuantity: json['maxQty'] as int? ?? 0,
      isAvaliable: json['isAvaliable'] as bool? ?? false,
      quantityInStock: json['quantityLeft'] as int? ?? 0,
      extras: (json['extras'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : ExtraDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ExtraDto?>[],
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : ExtraDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ExtraDto?>[],
    );

Map<String, dynamic> _$$_SkuModelToJson(_$_SkuModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'preOrder': instance.preOrder,
      'sku': instance.skuCode,
      'availabilityDate': instance.availabilityDate,
      'price': instance.defaultPrice,
      'finalPrice': instance.finalPrice,
      'colorID': instance.colorId,
      'sizeID': instance.sizeId,
      'images': instance.images,
      'productDiscountList': instance.discounts,
      'hasDiscount': instance.hasDiscount,
      'maxQty': instance.maxQuantity,
      'isAvaliable': instance.isAvaliable,
      'quantityLeft': instance.quantityInStock,
      'extras': instance.extras,
      'options': instance.options,
    };

_$_ImageModel _$$_ImageModelFromJson(Map<String, dynamic> json) =>
    _$_ImageModel(
      id: json['id'] as int?,
      url: json['url'] as String?,
      thumbUrl: json['thumbUrl'] as String?,
    );

Map<String, dynamic> _$$_ImageModelToJson(_$_ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'thumbUrl': instance.thumbUrl,
    };

_$_DiscountModel _$$_DiscountModelFromJson(Map<String, dynamic> json) =>
    _$_DiscountModel(
      key: json['key'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$$_DiscountModelToJson(_$_DiscountModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

_$_FeatureModel _$$_FeatureModelFromJson(Map<String, dynamic> json) =>
    _$_FeatureModel(
      name: json['name'] as String? ?? '',
      value: json['value'] as String? ?? '',
      imageURL: json['imageURL'] as String?,
    );

Map<String, dynamic> _$$_FeatureModelToJson(_$_FeatureModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'imageURL': instance.imageURL,
    };

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      id: json['id'] as int?,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int?,
      name: json['title'] as String? ?? '',
      shortDesc: json['shortDesc'] as String? ?? '',
      bogoPromoText: json['bogoPromoText'] as String? ?? '',
      imageUrl: json['imageURL'] as String? ?? '',
      imageThumbUrl: json['imageThumbUrl'] as String? ?? '',
      secondImageURL: json['secondImageURL'] as String? ?? '',
      secondThumbImageURL: json['secondThumbImageURL'] as String? ?? '',
      isAddedtoWishlist: json['isAddedtoWishlist'] as bool? ?? false,
      isOutOfStock: json['isOutOfStock'] as bool? ?? false,
      isOutOfStockShowConfig: json['isOutOfStockShowConfig'] as bool? ?? false,
      hasDiscount: json['hasDiscount'] as bool? ?? false,
      preOrder: json['preOrder'] as bool? ?? false,
      price: (json['price'] as num?)?.toDouble() ?? 0,
      finalPrice: (json['finalPrice'] as num?)?.toDouble() ?? 0,
      productDiscountList: (json['productDiscountList'] as List<dynamic>?)
              ?.map((e) =>
                  ProductDiscountListModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductDiscountListModel>[],
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.name,
      'shortDesc': instance.shortDesc,
      'bogoPromoText': instance.bogoPromoText,
      'imageURL': instance.imageUrl,
      'imageThumbUrl': instance.imageThumbUrl,
      'secondImageURL': instance.secondImageURL,
      'secondThumbImageURL': instance.secondThumbImageURL,
      'isAddedtoWishlist': instance.isAddedtoWishlist,
      'isOutOfStock': instance.isOutOfStock,
      'isOutOfStockShowConfig': instance.isOutOfStockShowConfig,
      'hasDiscount': instance.hasDiscount,
      'preOrder': instance.preOrder,
      'price': instance.price,
      'finalPrice': instance.finalPrice,
      'productDiscountList': instance.productDiscountList,
    };

_$_ProductDiscountListModel _$$_ProductDiscountListModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDiscountListModel(
      key: json['key'] as String? ?? '',
      value: json['value'] as String? ?? '',
    );

Map<String, dynamic> _$$_ProductDiscountListModelToJson(
        _$_ProductDiscountListModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

_$_ExtraDto _$$_ExtraDtoFromJson(Map<String, dynamic> json) => _$_ExtraDto(
      id: json['ID'] as int?,
      title: json['title'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
      qty: json['qty'] as int? ?? 0,
      isOption: json['isOption'] as bool? ?? false,
      extrasLocalizes: json['extrasLocalizes'] == null
          ? null
          : ExtrasLocalizes.fromJson(
              json['extrasLocalizes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ExtraDtoToJson(_$_ExtraDto instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'title': instance.title,
      'price': instance.price,
      'qty': instance.qty,
      'isOption': instance.isOption,
      'extrasLocalizes': instance.extrasLocalizes,
    };

_$_ExtrasLocalizes _$$_ExtrasLocalizesFromJson(Map<String, dynamic> json) =>
    _$_ExtrasLocalizes(
      id: json['id'] as int?,
      title: json['title'] as String? ?? '',
      languageID: json['languageID'] as int? ?? 1,
    );

Map<String, dynamic> _$$_ExtrasLocalizesToJson(_$_ExtrasLocalizes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'languageID': instance.languageID,
    };
