import 'package:linktsp_api/data/content_page/models/content_page_model.dart';

import '../../default_api.dart';
import '../../exception_api.dart';
import '../../result_model.dart';

class ContentPageServiceImp extends DefaultApiImp
    implements ContentPageService {
  ContentPageServiceImp();
  @override
  Future<ContentPageModel> getContentPage({required int id}) async {
    final respose = await postData(
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
  /// Use the id "2" to get history
  ///
  /// Use the id "3" to get about us
  ///
  /// Use the id "4" to get terms and conditions
  ///
  /// Use the id "5" to get content
  ///
  /// Use the id "6" to get privacy policy
  ///
  /// Use the id "7" to get sizes
  ///
  /// Use the id "9" to get shipping policy
  ///
  /// Use the id "3" to get our brands
  Future<ContentPageModel> getContentPage({required int id});
}
