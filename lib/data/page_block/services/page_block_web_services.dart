import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/page_block/models/page_block_model.dart';

import '../../exception_api.dart';
import '../../result_model.dart';

class PageBlockWebServiceImp extends DefaultApiImp
    implements PageBlockWebService {
  PageBlockWebServiceImp();

  @override
  Future<PageBlockModel> getPageBlock() async {
    final respose =
        await getData(path: 'home', queryParameters: {'language': 1});
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return PageBlockModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class PageBlockWebService {
  /// Creates home screen data ( Ex: banners, sliders and posters ).
  /// It's return [PageBlockModel]
  Future<PageBlockModel> getPageBlock();
}
