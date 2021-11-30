import 'package:linktsp_api/data/content_page/models/content_page_model.dart';

import '../../default_api.dart';
import '../../exception_api.dart';
import '../../result_model.dart';

class ContentPageServiceImp extends DefaultApi implements ContentPageService {
  ContentPageServiceImp({String defaultPath = ''}) : super(defaultPath);
  @override
  Future<ContentPageModel> getContentPage({required int id}) async {
    final respose = await getData(
      path: 'ContentPage',
      queryParameters: {
        'id': id,
      },
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return ContentPageModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class ContentPageService {
  Future<ContentPageModel> getContentPage({required int id});
}
