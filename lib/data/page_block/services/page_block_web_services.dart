import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/page_block/models/page_block_model.dart';

import '../../exception_api.dart';
import '../../result_model.dart';

class PageBlockWebServiceImp implements PageBlockWebService {
  PageBlockWebServiceImp({required this.defaultApi});
  final DefaultApi defaultApi;

  @override
  Future<PageBlockModel> getPageBlock(int customerId) async {
    final respose = await defaultApi.getData(path: 'home', queryParameters: {
      'language': 1,
      'CustomerID': customerId,
    });
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return PageBlockModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<BrandsModel>> getBrands() async {
    final respose = await defaultApi
        .getData(path: 'GetBrands', queryParameters: {'language': 1});
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return (result.data["brands"] as List)
          .map((e) => BrandsModel.fromJson(e))
          .toList();
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class PageBlockWebService {
  /// Creates home screen data ( Ex: banners, sliders and posters ).
  /// It's return [PageBlockModel]
  Future<PageBlockModel> getPageBlock(int customerId);
  Future<List<BrandsModel>> getBrands();
}
