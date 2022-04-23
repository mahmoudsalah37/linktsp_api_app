import 'package:linktsp_api/linktsp_api.dart';

class DemoNewListingDataModel {
  int? length;
  List<Items>? items;

  DemoNewListingDataModel({
    this.length,
    this.items,
  });

  DemoNewListingDataModel.fromJson(Map<String, dynamic> json) {
    length = json['length'] as int?;
    items = (json['items'] as List?)
        ?.map((dynamic e) => Items.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['length'] = length;
    json['items'] = items?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Items {
  bool? multiSKU;
  bool? isOutOfStock;
  int? remainingQty;
  bool? isOutOfStockShowConfig;
  String? code;
  dynamic discountType;
  dynamic discountValue;
  dynamic discountAmount;
  double? finalPrice;
  bool? hasDiscount;
  int? id;
  int? imageID;
  String? imageURL;
  String? imageThumbUrl;
  int? secondImageID;
  dynamic secondImageURL;
  dynamic secondThumbImageURL;
  dynamic currentImageURL;
  bool? showOutfit;
  double? price;
  double? rating;
  int? ratingsCount;
  dynamic shortDesc;
  String? title;
  String? seoTitle;
  dynamic source;
  int? bundleItemQTY;
  int? colorCount;
  int? productID;
  int? brandID;
  String? brandName;
  int? index;
  List<CroppedColorImages>? croppedColorImages;
  int? sizeID;
  int? colorID;
  dynamic promoText;
  dynamic bogoPromoText;
  int? colorOption;
  bool? preOrder;
  String? color;
  String? size;
  dynamic availabilityDate;
  dynamic categoryID;
  dynamic colorHexa;
  String? skuCode;
  double? qty;
  double? maxquantity;
  double? quantityLeft;
  List<Sizes>? sizes;
  List<dynamic>? productDiscountList;
  bool? isWishList;
  List<ExtraDto>? extras;
  List<ExtraDto>? options;

  Items({
    this.multiSKU,
    this.isOutOfStock,
    this.remainingQty,
    this.isOutOfStockShowConfig,
    this.code,
    this.discountType,
    this.discountValue,
    this.discountAmount,
    this.finalPrice,
    this.hasDiscount,
    this.id,
    this.imageID,
    this.imageURL,
    this.imageThumbUrl,
    this.secondImageID,
    this.secondImageURL,
    this.secondThumbImageURL,
    this.currentImageURL,
    this.showOutfit,
    this.price,
    this.rating,
    this.ratingsCount,
    this.shortDesc,
    this.title,
    this.seoTitle,
    this.source,
    this.bundleItemQTY,
    this.colorCount,
    this.productID,
    this.brandID,
    this.brandName,
    this.index,
    this.croppedColorImages,
    this.sizeID,
    this.colorID,
    this.promoText,
    this.bogoPromoText,
    this.colorOption,
    this.preOrder,
    this.color,
    this.size,
    this.availabilityDate,
    this.categoryID,
    this.colorHexa,
    this.skuCode,
    this.qty,
    this.maxquantity,
    this.quantityLeft,
    this.sizes,
    this.productDiscountList,
    this.isWishList,
    this.extras,
    this.options,
  });

  Items.fromJson(Map<String, dynamic> json) {
    multiSKU = json['multiSKU'] as bool?;
    isOutOfStock = json['isOutOfStock'] as bool?;
    remainingQty = json['remainingQty'] as int?;
    isOutOfStockShowConfig = json['isOutOfStockShowConfig'] as bool?;
    code = json['code'] as String?;
    discountType = json['discountType'];
    discountValue = json['discountValue'];
    discountAmount = json['discountAmount'];
    finalPrice = json['finalPrice'] as double?;
    hasDiscount = json['hasDiscount'] as bool?;
    id = json['id'] as int?;
    imageID = json['imageID'] as int?;
    imageURL = json['imageURL'] as String?;
    imageThumbUrl = json['imageThumbUrl'] as String?;
    secondImageID = json['secondImageID'] as int?;
    secondImageURL = json['secondImageURL'];
    secondThumbImageURL = json['secondThumbImageURL'];
    currentImageURL = json['currentImageURL'];
    showOutfit = json['showOutfit'] as bool?;
    price = json['price'] as double?;
    rating = json['rating'] as double?;
    ratingsCount = json['ratingsCount'] as int?;
    shortDesc = json['shortDesc'];
    title = json['title'] as String?;
    seoTitle = json['seoTitle'] as String?;
    source = json['source'];
    bundleItemQTY = json['bundleItemQTY'] as int?;
    colorCount = json['colorCount'] as int?;
    productID = json['productID'] as int?;
    brandID = json['brandID'] as int?;
    brandName = json['brandName'] as String?;
    index = json['index'] as int?;
    croppedColorImages = (json['croppedColorImages'] as List?)
        ?.map((dynamic e) =>
            CroppedColorImages.fromJson(e as Map<String, dynamic>))
        .toList();
    sizeID = json['sizeID'] as int?;
    colorID = json['colorID'] as int?;
    promoText = json['promoText'];
    bogoPromoText = json['bogoPromoText'];
    colorOption = json['colorOption'] as int?;
    preOrder = json['preOrder'] as bool?;
    color = json['color'] as String?;
    size = json['size'] as String?;
    availabilityDate = json['availabilityDate'];
    categoryID = json['categoryID'];
    colorHexa = json['colorHexa'];
    skuCode = json['skuCode'] as String?;
    qty = json['qty'] as double?;
    maxquantity = json['maxquantity'] as double?;
    quantityLeft = json['quantityLeft'] as double?;
    sizes = (json['sizes'] as List?)
        ?.map((dynamic e) => Sizes.fromJson(e as Map<String, dynamic>))
        .toList();
    productDiscountList = json['productDiscountList'] as List?;
    isWishList = json['isWishList'] as bool?;
    extras = (json['extras'] as List?)
        ?.map((dynamic e) => ExtraDto.fromJson(e as Map<String, dynamic>))
        .toList();
    options = (json['options'] as List?)
        ?.map((dynamic e) => ExtraDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['multiSKU'] = multiSKU;
    json['isOutOfStock'] = isOutOfStock;
    json['remainingQty'] = remainingQty;
    json['isOutOfStockShowConfig'] = isOutOfStockShowConfig;
    json['code'] = code;
    json['discountType'] = discountType;
    json['discountValue'] = discountValue;
    json['discountAmount'] = discountAmount;
    json['finalPrice'] = finalPrice;
    json['hasDiscount'] = hasDiscount;
    json['id'] = id;
    json['imageID'] = imageID;
    json['imageURL'] = imageURL;
    json['imageThumbUrl'] = imageThumbUrl;
    json['secondImageID'] = secondImageID;
    json['secondImageURL'] = secondImageURL;
    json['secondThumbImageURL'] = secondThumbImageURL;
    json['currentImageURL'] = currentImageURL;
    json['showOutfit'] = showOutfit;
    json['price'] = price;
    json['rating'] = rating;
    json['ratingsCount'] = ratingsCount;
    json['shortDesc'] = shortDesc;
    json['title'] = title;
    json['seoTitle'] = seoTitle;
    json['source'] = source;
    json['bundleItemQTY'] = bundleItemQTY;
    json['colorCount'] = colorCount;
    json['productID'] = productID;
    json['brandID'] = brandID;
    json['brandName'] = brandName;
    json['index'] = index;
    json['croppedColorImages'] =
        croppedColorImages?.map((e) => e.toJson()).toList();
    json['sizeID'] = sizeID;
    json['colorID'] = colorID;
    json['promoText'] = promoText;
    json['bogoPromoText'] = bogoPromoText;
    json['colorOption'] = colorOption;
    json['preOrder'] = preOrder;
    json['color'] = color;
    json['size'] = size;
    json['availabilityDate'] = availabilityDate;
    json['categoryID'] = categoryID;
    json['colorHexa'] = colorHexa;
    json['skuCode'] = skuCode;
    json['qty'] = qty;
    json['maxquantity'] = maxquantity;
    json['quantityLeft'] = quantityLeft;
    json['sizes'] = sizes?.map((e) => e.toJson()).toList();
    json['productDiscountList'] = productDiscountList;
    json['isWishList'] = isWishList;
    json['extras'] = extras?.map((e) => e.toJson()).toList();
    json['options'] = options?.map((e) => e.toJson()).toList();
    return json;
  }
}

class CroppedColorImages {
  String? colorID;
  String? croppedImage;
  dynamic hexa;

  CroppedColorImages({
    this.colorID,
    this.croppedImage,
    this.hexa,
  });

  CroppedColorImages.fromJson(Map<String, dynamic> json) {
    colorID = json['colorID'] as String?;
    croppedImage = json['croppedImage'] as String?;
    hexa = json['hexa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['colorID'] = colorID;
    json['croppedImage'] = croppedImage;
    json['hexa'] = hexa;
    return json;
  }
}

class Sizes {
  int? id;
  String? name;
  bool? isOutOfStock;
  int? skuId;

  Sizes({
    this.id,
    this.name,
    this.isOutOfStock,
    this.skuId,
  });

  Sizes.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    name = json['name'] as String?;
    isOutOfStock = json['isOutOfStock'] as bool?;
    skuId = json['skuId'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['isOutOfStock'] = isOutOfStock;
    json['skuId'] = skuId;
    return json;
  }
}
