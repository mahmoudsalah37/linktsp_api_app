import 'package:linktsp_api/data/reviews/models/review_model.dart';
import 'package:linktsp_api/data/default_api.dart';

import '../../exception_api.dart';
import '../../result_model.dart';

class ReviewWebServiceImp extends DefaultApi implements ReviewWebService {
  ReviewWebServiceImp({String defaultPath = ''}) : super(defaultPath);

  @override
  Future<bool?> addRate(
      {required String productCode,
      required double rate,
      required int customerId}) async {
    final response = await postData(
      path: 'product/rate/add',
      queryParameters: {
        'ProductCode': productCode,
        'customerID': customerId,
        'rate': rate,
      },
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool?> addReview({required ItemReview itemReview}) async {
    final response = await postData(
      path: 'product/review/add',
      data: itemReview,
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<ReviewRateModel> getProductRate({required String productCode}) async {
    final response = await getData(
      path: 'product/$productCode/rate',
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return ReviewRateModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<ReviewModel> getProductReviews({required String productCode}) async {
    final response = await getData(
      path: 'product/$productCode/review',
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return ReviewModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class ReviewWebService {
  /// It's return all product reviews.It must take [product code].
  Future<ReviewModel> getProductReviews({required String productCode});

  /// It's used to add review on product. User can make only one review on the same product. User must have an account to use this feature.
  Future<bool?> addReview({required ItemReview itemReview});

  /// It's return product rate. It  must take [product code].
  Future<ReviewRateModel> getProductRate({required String productCode});

  /// It's used for only adding rate on product,User must have an account to use this feature.
  Future<bool?> addRate(
      {required String productCode,
      required double rate,
      required int customerId});
}
