import 'package:linktsp_api/data/address/models/address_model.dart';

class CancelReasonModel {
  CancelReasonModel({
    this.reasonId,
    this.customerId,
    this.orderId,
    this.content,
    this.zoneId,
  });

  int? reasonId;
  int? customerId;
  int? orderId;
  String? content;
  int? zoneId;

  factory CancelReasonModel.fromJson(Map<String, dynamic> json) =>
      CancelReasonModel(
        reasonId: json["reasonID"],
        customerId: json["customerID"],
        orderId: json["orderID"],
        content: json["content"],
        zoneId: json["zoneID"],
      );

  Map<String, dynamic> toJson() => {
        "reasonID": reasonId,
        "customerID": customerId,
        "orderID": orderId,
        "content": content,
        "zoneID": zoneId,
      };
}

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
  });

  int? qty;
  int? id;
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

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
        qty: json["qty"],
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
      );

  Map<String, dynamic> toJson() => {
        "qty": qty,
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
      };
}

class Store {
  Store({
    this.id,
    this.name,
    this.latitude,
    this.longitude,
    this.description,
    this.mobile,
    this.telephone,
  });

  int? id;
  String? name;
  double? latitude;
  double? longitude;
  String? description;
  String? mobile;
  String? telephone;

  factory Store.fromJson(Map<String, dynamic> json) => Store(
        id: json["id"],
        name: json["name"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        description: json["description"],
        mobile: json["mobile"],
        telephone: json["telephone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "latitude": latitude,
        "longitude": longitude,
        "description": description,
        "mobile": mobile,
        "telephone": telephone,
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

class ComplaintModel {
  ComplaintModel({
    this.complaintReasonId,
    this.customerId,
    this.orderId,
    this.content,
    this.zoneId,
  });

  int? complaintReasonId;
  int? customerId;
  int? orderId;
  String? content;
  int? zoneId;

  factory ComplaintModel.fromJson(Map<String, dynamic> json) => ComplaintModel(
        complaintReasonId: json["complaintReasonID"],
        customerId: json["customerID"],
        orderId: json["orderID"],
        content: json["content"],
        zoneId: json["zoneID"],
      );

  Map<String, dynamic> toJson() => {
        "complaintReasonID": complaintReasonId,
        "customerID": customerId,
        "orderID": orderId,
        "content": content,
        "zoneID": zoneId,
      };
}
