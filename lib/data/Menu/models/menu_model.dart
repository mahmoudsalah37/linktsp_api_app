class MenuModel {
  MenuModel({
    this.length,
    this.items,
  });

  int? length;
  List<Item>? items;

  factory MenuModel.fromJson(Map<String, dynamic> json) => MenuModel(
        length: json["length"],
        items: json["items"] == null
            ? null
            : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "length": length,
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    this.id,
    this.name,
    this.childern,
    this.listType,
    this.imgUrl,
    this.imgThumbUrl,
    this.hasFilter,
    this.listTypeName,
    this.listTypeID,
    this.filterModel,
  });

  int? id;
  String? name;
  List<Item>? childern;
  int? listType;
  String? imgUrl;
  String? imgThumbUrl;
  bool? hasFilter;
  String? listTypeName;
  int? listTypeID;
  FilterrModel? filterModel;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"],
        childern: json["childern"] == null
            ? null
            : List<Item>.from(json["childern"].map((x) => Item.fromJson(x))),
        listType: json["listType"],
        imgUrl: json["imgURL"],
        imgThumbUrl: json["imgThumbURL"],
        hasFilter: json["hasFilter"],
        listTypeName: json["listTypeName"],
        listTypeID: json["listTypeID"],
        filterModel: json["filterModel"] == null
            ? null
            : FilterrModel.fromJson(json["filterModel"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "childern": childern == null
            ? null
            : List<dynamic>.from(childern!.map((x) => x.toJson())),
        "listType": listType,
        "imgURL": imgUrl,
        "imgThumbURL": imgThumbUrl,
        "hasFilter": hasFilter,
        "listTypeName": listTypeName,
        "listTypeID": listTypeID,
        "filterModel": filterModel == null ? null : filterModel!.toJson(),
      };
}

class ContactInfoModel {
  ContactInfoModel({
    this.value,
    this.url,
    this.socialType,
  });

  String? value;
  String? url;
  int? socialType;

  factory ContactInfoModel.fromJson(Map<String, dynamic> json) =>
      ContactInfoModel(
        value: json["value"],
        url: json["url"],
        socialType: json["socialType"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "url": url,
        "socialType": socialType,
      };
}

class FilterrModel {
  FilterrModel({
    this.listType,
    this.listTypeId,
    this.languageId,
    this.minPrice,
    this.maxPrice,
    this.sortBy,
    this.keyword,
    this.brandsIDs,
    this.categoryIDs,
    this.colorIDs,
    this.sizeIDs,
    this.featureValues,
    this.hasDiscount,
    this.customerId,
    this.storeId,
    this.zoneId,
    this.pageIndex,
    this.rowCount,
    this.sortProp,
    this.sortDir,
  });

  int? listType;
  int? listTypeId;
  int? languageId;
  dynamic minPrice;
  dynamic maxPrice;
  SortBy? sortBy;
  dynamic keyword;
  List<dynamic>? brandsIDs;
  List<dynamic>? categoryIDs;
  List<dynamic>? colorIDs;
  List<dynamic>? sizeIDs;
  List<dynamic>? featureValues;
  dynamic hasDiscount;
  dynamic customerId;
  dynamic storeId;
  dynamic zoneId;
  int? pageIndex;
  int? rowCount;
  dynamic sortProp;
  dynamic sortDir;

  factory FilterrModel.fromJson(Map<String, dynamic> json) => FilterrModel(
        listType: json["listType"] == null ? null : json["listType"],
        listTypeId: json["listTypeID"] == null ? null : json["listTypeID"],
        languageId: json["languageID"] == null ? null : json["languageID"],
        minPrice: json["minPrice"],
        maxPrice: json["maxPrice"],
        sortBy:
            json["sortBy"] == null ? null : sortByValues.map![json["sortBy"]],
        keyword: json["keyword"],
        brandsIDs: json["brandsIDs"] == null
            ? null
            : List<dynamic>.from(json["brandsIDs"].map((x) => x)),
        categoryIDs: json["categoryIDs"] == null
            ? null
            : List<dynamic>.from(json["categoryIDs"].map((x) => x)),
        colorIDs: json["colorIDs"] == null
            ? null
            : List<dynamic>.from(json["colorIDs"].map((x) => x)),
        sizeIDs: json["sizeIDs"] == null
            ? null
            : List<dynamic>.from(json["sizeIDs"].map((x) => x)),
        featureValues: json["featureValues"] == null
            ? null
            : List<dynamic>.from(json["featureValues"].map((x) => x)),
        hasDiscount: json["hasDiscount"],
        customerId: json["customerID"],
        storeId: json["storeID"],
        zoneId: json["zoneID"],
        pageIndex: json["pageIndex"] == null ? null : json["pageIndex"],
        rowCount: json["rowCount"] == null ? null : json["rowCount"],
        sortProp: json["sortProp"],
        sortDir: json["sortDir"],
      );

  Map<String, dynamic> toJson() => {
        "listType": listType == null ? null : listType,
        "listTypeID": listTypeId == null ? null : listTypeId,
        "languageID": languageId == null ? null : languageId,
        "minPrice": minPrice,
        "maxPrice": maxPrice,
        "sortBy": sortBy == null ? null : sortByValues.reverse[sortBy],
        "keyword": keyword,
        "brandsIDs": brandsIDs == null
            ? null
            : List<dynamic>.from(brandsIDs!.map((x) => x)),
        "categoryIDs": categoryIDs == null
            ? null
            : List<dynamic>.from(categoryIDs!.map((x) => x)),
        "colorIDs": colorIDs == null
            ? null
            : List<dynamic>.from(colorIDs!.map((x) => x)),
        "sizeIDs":
            sizeIDs == null ? null : List<dynamic>.from(sizeIDs!.map((x) => x)),
        "featureValues": featureValues == null
            ? null
            : List<dynamic>.from(featureValues!.map((x) => x)),
        "hasDiscount": hasDiscount,
        "customerID": customerId,
        "storeID": storeId,
        "zoneID": zoneId,
        "pageIndex": pageIndex == null ? null : pageIndex,
        "rowCount": rowCount == null ? null : rowCount,
        "sortProp": sortProp,
        "sortDir": sortDir,
      };
}

enum SortBy { NEWARRIVALS }

final sortByValues = EnumValues({"newarrivals": SortBy.NEWARRIVALS});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap ?? {};
  }
}
