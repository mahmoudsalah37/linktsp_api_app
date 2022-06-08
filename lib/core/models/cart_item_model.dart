import 'package:linktsp_api/data/list/models/new_list_model.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'cart_item_model.g.dart';

@CopyWith()
class CartItemModel {
  CartItemModel({
    this.maxQty,
    this.imageId,
    this.freeBogo,
    this.discountBogoid,
    this.addedForDiscountBogo,
    this.stock,
    this.qty,
    this.minDeliveryPeriod,
    this.maxDeliveryPeriod,
    this.periodName,
    this.deliveryNote,
    this.preOrder,
    this.availabilityDate,
    this.id,
    this.productId,
    this.productCode,
    this.imageUrl,
    this.imageThumbUrl,
    this.title,
    this.seoTitle,
    this.isOutOfStock,
    this.price,
    this.finalPrice,
    this.hasDiscount,
    this.discountValue,
    this.discountType,
    this.promoText,
    this.bogoPromoText,
    this.croppedImageUrl,
    this.enableCropping,
    this.size,
    this.sizeId,
    this.colorHexaCode,
    this.color,
    this.colorId,
    this.brandName,
    this.productDiscountList,
  });

  int? maxQty;
  int? imageId;
  bool? freeBogo;
  dynamic discountBogoid;
  bool? addedForDiscountBogo;
  int? stock;
  int? qty;
  int? minDeliveryPeriod;
  int? maxDeliveryPeriod;
  String? periodName;
  String? deliveryNote;
  bool? preOrder;
  String? availabilityDate;
  int? id;
  int? productId;
  dynamic productCode;
  String? imageUrl;
  String? imageThumbUrl;
  String? title;
  String? seoTitle;
  bool? isOutOfStock;
  double? price;
  double? finalPrice;
  bool? hasDiscount;
  double? discountValue;
  int? discountType;
  String? promoText;
  String? bogoPromoText;
  String? croppedImageUrl;
  bool? enableCropping;
  String? size;
  int? sizeId;
  String? colorHexaCode;
  String? color;
  int? colorId;
  String? brandName;
  List<ProductDiscountList>? productDiscountList;

  factory CartItemModel.fromJson(Map<String, dynamic> json) => CartItemModel(
        maxQty: json["maxQty"],
        imageId: json["imageID"],
        freeBogo: json["freeBOGO"],
        discountBogoid: json["discountBOGOID"],
        addedForDiscountBogo: json["addedForDiscountBOGO"],
        stock: json["stock"],
        qty: json["qty"],
        minDeliveryPeriod: json["minDeliveryPeriod"],
        maxDeliveryPeriod: json["maxDeliveryPeriod"],
        periodName: json["periodName"],
        deliveryNote: json["deliveryNote"],
        preOrder: json["preOrder"],
        availabilityDate: json["availabilityDate"],
        id: json["id"],
        productId: json["productID"],
        productCode: json["productCode"],
        imageUrl: json["imageUrl"],
        imageThumbUrl: json["imageThumbUrl"],
        title: json["title"],
        seoTitle: json["seoTitle"],
        isOutOfStock: json["isOutOfStock"],
        price: json["price"] == null ? null : json["price"]!.toDouble(),
        finalPrice:
            json["finalPrice"] == null ? null : json["finalPrice"]!.toDouble(),
        hasDiscount: json["hasDiscount"],
        discountValue: json["discountValue"],
        discountType: json["discountType"],
        promoText: json["promoText"],
        bogoPromoText: json["bogoPromoText"],
        croppedImageUrl: json["croppedImageURL"],
        enableCropping: json["enableCropping"],
        size: json["size"],
        sizeId: json["sizeID"],
        colorHexaCode: json["colorHexaCode"],
        color: json["color"],
        colorId: json["colorID"],
        brandName: json["brandName"],
        productDiscountList: json["productDiscountList"] == null
            ? null
            : List<ProductDiscountList>.from(
                json["productDiscountList"].map(
                  (x) => ProductDiscountList.fromJson(x),
                ),
              ),
      );

  Map<String, dynamic> toJson() => {
        "maxQty": maxQty,
        "imageID": imageId,
        "freeBOGO": freeBogo,
        "discountBOGOID": discountBogoid,
        "addedForDiscountBOGO": addedForDiscountBogo,
        "stock": stock,
        "qty": qty,
        "minDeliveryPeriod": minDeliveryPeriod,
        "maxDeliveryPeriod": maxDeliveryPeriod,
        "periodName": periodName,
        "deliveryNote": deliveryNote,
        "preOrder": preOrder,
        "availabilityDate": availabilityDate,
        "id": id,
        "productID": productId,
        "productCode": productCode,
        "imageUrl": imageUrl,
        "imageThumbUrl": imageThumbUrl,
        "title": title,
        "seoTitle": seoTitle,
        "isOutOfStock": isOutOfStock,
        "price": price,
        "finalPrice": finalPrice,
        "hasDiscount": hasDiscount,
        "discountValue": discountValue,
        "discountType": discountType,
        "promoText": promoText,
        "bogoPromoText": bogoPromoText,
        "croppedImageURL": croppedImageUrl,
        "enableCropping": enableCropping,
        "size": size,
        "sizeID": sizeId,
        "colorHexaCode": colorHexaCode,
        "color": color,
        "colorID": colorId,
        "brandName": brandName,
        "productDiscountList": productDiscountList ??
            List<dynamic>.from(productDiscountList!.map((x) => x.toJson())),
      };
}
