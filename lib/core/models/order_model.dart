import '../../data/list/models/new_list_model.dart';
import 'address_model.dart';
import 'store_model.dart';

class OrderModel {
  OrderModel({
    this.date,
    this.id,
    this.orderNo,
    this.productsCount,
    this.total,
    this.orderStatus,
  });

  String? date;
  int? id;
  String? orderNo;
  int? productsCount;
  double? total;
  String? orderStatus;

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        date: json["date"],
        id: json["id"],
        orderNo: json["orderNo"],
        productsCount: json["productsCount"],
        total: json["total"] == null ? null : json["total"]!.toDouble(),
        orderStatus: json["orderStatus"],
      );

  Map<String, dynamic> toJson() => {
        "date": date,
        "id": id,
        "orderNo": orderNo,
        "productsCount": productsCount,
        "total": total,
        "orderStatus": orderStatus,
      };
}

class OrderDetailsModel {
  OrderDetailsModel({
    this.address,
    this.store,
    this.orderItems,
    this.currency,
    this.paymentType,
    this.canCancel,
    this.date,
    this.id,
    this.orderNo,
    this.productsCount,
    this.total,
    this.orderStatus,
  });

  AddressModel? address;
  Store? store;
  List<OrderItem>? orderItems;
  String? currency;
  String? paymentType;
  bool? canCancel;
  String? date;
  int? id;
  String? orderNo;
  int? productsCount;
  double? total;
  String? orderStatus;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      OrderDetailsModel(
        address: json["address"] == null
            ? null
            : AddressModel.fromJson(json["address"]),
        store: json["store"] == null ? null : Store.fromJson(json["store"]),
        orderItems: json["orderItems"] == null
            ? null
            : List<OrderItem>.from(
                json["orderItems"].map((x) => OrderItem.fromJson(x))),
        currency: json["currency"],
        paymentType: json["paymentType"],
        canCancel: json["canCancel"],
        date: json["date"],
        id: json["id"],
        orderNo: json["orderNo"],
        productsCount: json["productsCount"],
        total: json["total"] == null ? null : json["total"]!.toDouble(),
        orderStatus: json["orderStatus"],
      );

  Map<String, dynamic> toJson() => {
        "address": address == null ? null : address!.toJson(),
        "store": store == null ? null : store!.toJson(),
        "orderItems": orderItems == null
            ? null
            : List<dynamic>.from(orderItems!.map((x) => x.toJson())),
        "currency": currency,
        "paymentType": paymentType,
        "canCancel": canCancel,
        "date": date,
        "id": id,
        "orderNo": orderNo,
        "productsCount": productsCount,
        "total": total,
        "orderStatus": orderStatus,
      };
}

class OrderItem {
  OrderItem({
    this.qty,
    this.id,
    this.skuId,
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

  int? qty;
  int? id;
  int? skuId;
  int? productId;
  String? productCode;
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

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
        qty: json["qty"],
        id: json["id"],
        skuId: json["skuId"],
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
        productDiscountList: json["productDiscountList"] == null
            ? null
            : List<ProductDiscountList>.from(
                json["productDiscountList"].map(
                  (x) => ProductDiscountList.fromJson(x),
                ),
              ),
      );

  Map<String, dynamic> toJson() => {
        "qty": qty,
        "id": id,
        "skuId": skuId,
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

class TrackOrderModel {
  TrackOrderModel({
    this.length,
    this.items,
  });

  int? length;
  List<TrackOrderItemModel>? items;

  factory TrackOrderModel.fromJson(Map<String, dynamic> json) =>
      TrackOrderModel(
        length: json["length"],
        items: json["items"] == null
            ? null
            : List<TrackOrderItemModel>.from(
                json["items"].map((x) => TrackOrderItemModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "length": length,
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class TrackOrderItemModel {
  TrackOrderItemModel({
    this.date,
    this.status,
  });

  DateTime? date;
  String? status;

  factory TrackOrderItemModel.fromJson(Map<String, dynamic> json) =>
      TrackOrderItemModel(
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "date": date == null ? null : date!.toIso8601String(),
        "status": status,
      };
}
