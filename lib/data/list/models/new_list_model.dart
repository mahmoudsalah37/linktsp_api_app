// To parse this JSON data, do
//
//     final NewListingDataModel = NewListingDataModelFromJson(jsonString);

class NewListingDataModel {
  NewListingDataModel({
    this.length,
    this.items,
  });

  int? length;
  List<ListingItem>? items;

  factory NewListingDataModel.fromJson(Map<String, dynamic> json) =>
      NewListingDataModel(
        length: json["length"] ?? json["length"],
        items: json["items"] == null
            ? null
            : List<ListingItem>.from(
                json["items"].map((x) => ListingItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "length": length ?? length,
        "items": items ?? List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class ListingItem {
  ListingItem({
    this.multiSku,
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
    this.imageId,
    this.imageUrl,
    this.imageThumbUrl,
    this.secondImageId,
    this.secondImageUrl,
    this.secondThumbImageUrl,
    this.currentImageUrl,
    this.showOutfit,
    this.price,
    this.rating,
    this.ratingsCount,
    this.shortDesc,
    this.title,
    this.seoTitle,
    this.source,
    this.bundleItemQty,
    this.colorCount,
    this.productId,
    this.brandId,
    this.brandName,
    this.index,
    this.croppedColorImages,
    this.sizeId,
    this.colorId,
    this.promoText,
    this.bogoPromoText,
    this.colorOption,
    this.preOrder,
    this.color,
    this.size,
    this.availabilityDate,
    this.categoryId,
    this.colorHexa,
    this.skuCode,
    this.qty,
    this.sizes,
    this.productDiscountList,
    this.isWishList,
  });

  bool? multiSku;
  bool? isOutOfStock;
  dynamic remainingQty;
  bool? isOutOfStockShowConfig;
  String? code;
  int? discountType;
  double? discountValue;
  double? discountAmount;
  double? finalPrice;
  bool? hasDiscount;
  int? id;
  int? imageId;
  String? imageUrl;
  String? imageThumbUrl;
  int? secondImageId;
  String? secondImageUrl;
  String? secondThumbImageUrl;
  dynamic currentImageUrl;
  bool? showOutfit;
  double? price;
  double? rating;
  int? ratingsCount;
  String? shortDesc;
  String? title;
  String? seoTitle;
  dynamic source;
  int? bundleItemQty;
  int? colorCount;
  int? productId;
  int? brandId;
  String? brandName;
  int? index;
  List<CroppedColorImage>? croppedColorImages;
  int? sizeId;
  int? colorId;
  String? promoText;
  dynamic bogoPromoText;
  int? colorOption;
  bool? preOrder;
  String? color;
  String? size;
  DateTime? availabilityDate;
  dynamic categoryId;
  String? colorHexa;
  String? skuCode;
  double? qty;
  List<dynamic>? sizes;
  List<ProductDiscountList>? productDiscountList;
  bool? isWishList;

  factory ListingItem.fromJson(Map<String, dynamic> json) => ListingItem(
        multiSku: json["multiSKU"] ?? json["multiSKU"],
        isOutOfStock: json["isOutOfStock"] ?? json["isOutOfStock"],
        remainingQty: json["remainingQty"],
        isOutOfStockShowConfig:
            json["isOutOfStockShowConfig"] ?? json["isOutOfStockShowConfig"],
        code: json["code"] ?? json["code"],
        discountType: json["discountType"] ?? json["discountType"],
        discountValue: json["discountValue"] ?? json["discountValue"],
        discountAmount: json["discountAmount"] ?? json["discountAmount"],
        finalPrice: json["finalPrice"] ?? json["finalPrice"],
        hasDiscount: json["hasDiscount"] ?? json["hasDiscount"],
        id: json["id"] ?? json["id"],
        imageId: json["imageID"] ?? json["imageID"],
        imageUrl: json["imageURL"] ?? json["imageURL"],
        imageThumbUrl: json["imageThumbUrl"] ?? json["imageThumbUrl"],
        secondImageId: json["secondImageID"] ?? json["secondImageID"],
        secondImageUrl: json["secondImageURL"] ?? json["secondImageURL"],
        secondThumbImageUrl:
            json["secondThumbImageURL"] ?? json["secondThumbImageURL"],
        currentImageUrl: json["currentImageURL"],
        showOutfit: json["showOutfit"] ?? json["showOutfit"],
        price: json["price"] ?? json["price"],
        rating: json["rating"] ?? json["rating"],
        ratingsCount: json["ratingsCount"] ?? json["ratingsCount"],
        shortDesc: json["shortDesc"] ?? json["shortDesc"],
        title: json["title"] ?? json["title"],
        seoTitle: json["seoTitle"] ?? json["seoTitle"],
        source: json["source"],
        bundleItemQty: json["bundleItemQTY"] ?? json["bundleItemQTY"],
        colorCount: json["colorCount"] ?? json["colorCount"],
        productId: json["productID"] ?? json["productID"],
        brandId: json["brandID"] ?? json["brandID"],
        brandName: json["brandName"] ?? json["brandName"],
        index: json["index"] ?? json["index"],
        croppedColorImages: json["croppedColorImages"] == null
            ? null
            : List<CroppedColorImage>.from(json["croppedColorImages"]
                .map((x) => CroppedColorImage.fromJson(x))),
        sizeId: json["sizeID"] ?? json["sizeID"],
        colorId: json["colorID"] ?? json["colorID"],
        promoText: json["promoText"] ?? json["promoText"],
        bogoPromoText: json["bogoPromoText"],
        colorOption: json["colorOption"] ?? json["colorOption"],
        preOrder: json["preOrder"] ?? json["preOrder"],
        color: json["color"] ?? json["color"],
        size: json["size"] ?? json["size"],
        availabilityDate: json["availabilityDate"] == null
            ? null
            : DateTime.parse(json["availabilityDate"]),
        categoryId: json["categoryID"],
        colorHexa: json["colorHexa"] ?? json["colorHexa"],
        skuCode: json["skuCode"] ?? json["skuCode"],
        qty: json["qty"] ?? json["qty"],
        sizes: json["sizes"] == null
            ? null
            : List<dynamic>.from(json["sizes"].map((x) => x)),
        productDiscountList: json["productDiscountList"] == null
            ? null
            : List<ProductDiscountList>.from(json["productDiscountList"]
                .map((x) => ProductDiscountList.fromJson(x))),
        isWishList: json["isWishList"] ?? false,
      );

  Map<String, dynamic> toJson() => {
        "multiSKU": multiSku ?? multiSku,
        "isOutOfStock": isOutOfStock ?? isOutOfStock,
        "remainingQty": remainingQty,
        "isOutOfStockShowConfig":
            isOutOfStockShowConfig ?? isOutOfStockShowConfig,
        "code": code ?? code,
        "discountType": discountType ?? discountType,
        "discountValue": discountValue ?? discountValue,
        "discountAmount": discountAmount ?? discountAmount,
        "finalPrice": finalPrice ?? finalPrice,
        "hasDiscount": hasDiscount ?? hasDiscount,
        "id": id ?? id,
        "imageID": imageId ?? imageId,
        "imageURL": imageUrl ?? imageUrl,
        "imageThumbUrl": imageThumbUrl ?? imageThumbUrl,
        "secondImageID": secondImageId ?? secondImageId,
        "secondImageURL": secondImageUrl ?? secondImageUrl,
        "secondThumbImageURL": secondThumbImageUrl ?? secondThumbImageUrl,
        "currentImageURL": currentImageUrl,
        "showOutfit": showOutfit ?? showOutfit,
        "price": price ?? price,
        "rating": rating ?? rating,
        "ratingsCount": ratingsCount ?? ratingsCount,
        "shortDesc": shortDesc ?? shortDesc,
        "title": title ?? title,
        "seoTitle": seoTitle ?? seoTitle,
        "source": source,
        "bundleItemQTY": bundleItemQty ?? bundleItemQty,
        "colorCount": colorCount ?? colorCount,
        "productID": productId ?? productId,
        "brandID": brandId ?? brandId,
        "brandName": brandName ?? brandName,
        "index": index ?? index,
        "croppedColorImages": croppedColorImages ?? croppedColorImages,
        "sizeID": sizeId ?? sizeId,
        "colorID": colorId ?? colorId,
        "promoText": promoText ?? promoText,
        "bogoPromoText": bogoPromoText,
        "colorOption": colorOption ?? colorOption,
        "preOrder": preOrder ?? preOrder,
        "color": color ?? color,
        "size": size ?? size,
        "availabilityDate":
            availabilityDate ?? availabilityDate!.toIso8601String(),
        "categoryID": categoryId,
        "colorHexa": colorHexa ?? colorHexa,
        "skuCode": skuCode ?? skuCode,
        "qty": qty ?? qty,
        "sizes": sizes ?? List<dynamic>.from(sizes!.map((x) => x)),
        "productDiscountList": productDiscountList ??
            List<dynamic>.from(productDiscountList!.map((x) => x.toJson())),
        "isWishList": isWishList ?? isWishList,
      };
}

class CroppedColorImage {
  CroppedColorImage({
    this.colorId,
    this.croppedImage,
    this.hexa,
  });

  String? colorId;
  String? croppedImage;
  String? hexa;

  factory CroppedColorImage.fromJson(Map<String, dynamic> json) =>
      CroppedColorImage(
        colorId: json["colorID"] ?? json["colorID"],
        croppedImage: json["croppedImage"] ?? json["croppedImage"],
        hexa: json["hexa"] ?? json["hexa"],
      );

  Map<String, dynamic> toJson() => {
        "colorID": colorId ?? colorId,
        "croppedImage": croppedImage ?? croppedImage,
        "hexa": hexa ?? hexa,
      };
}

class ProductDiscountList {
  ProductDiscountList({
    this.key,
    this.value,
  });

  String? key;
  String? value;

  factory ProductDiscountList.fromJson(Map<String, dynamic> json) =>
      ProductDiscountList(
        key: json["key"] ?? json["key"],
        value: json["value"] ?? json["value"],
      );

  Map<String, dynamic> toJson() => {
        "key": key ?? key,
        "value": value ?? value,
      };
}
