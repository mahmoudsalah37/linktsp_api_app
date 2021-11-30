class ApiReturnResult {
  final int? code;
  final String? message;
  final dynamic data;
  final List<String>? error;

  ApiReturnResult({this.code, this.message, this.data, this.error});

  //mapping json data
  factory ApiReturnResult.fromJSON(Map<String, dynamic> jsonMap) {
    final data = ApiReturnResult(
        code: jsonMap["code"],
        message: jsonMap["message"],
        error: jsonMap["error"] == null
            ? null
            : List<String>.from(jsonMap["error"].map((x) => x)),
        data: jsonMap["data"]);
    return data;
  }
  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "error": error,
        "data": data,
      };
}

class DataModel {
  final int length;
  final List<dynamic> items;

  DataModel({required this.length, required this.items});

  factory DataModel.fromJSON(Map<String, dynamic> jsonMap) {
    final data = DataModel(length: jsonMap["length"], items: jsonMap["items"]);
    return data;
  }
}
