import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/wishlist/models/wishlist_model.dart';

import '../../exception_api.dart';
import '../../result_model.dart';

class WishlistWebServicesImp extends DefaultApiImp
    implements WishlistWebServices {
  WishlistWebServicesImp();

  @override
  Future<bool?> addToWishlist(
      {required int customerId, required int skuid}) async {
    final response = await postData(
      path: 'Profile/WishList/Add',
      queryParameters: {'SKUID': skuid, 'customerID': customerId},
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<WishlistProductsModel>> getWishlist(
      {required int customerId}) async {
    final response = await getData(path: 'profile/wishList', queryParameters: {
      'CustomerID': customerId,
    });
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return List<WishlistProductsModel>.from(
          result.data.map((model) => WishlistProductsModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool?> moveToCart(
      {required int customerId, required int skuid}) async {
    final response = await postData(
      path: 'profile/wishList/addtocart',
      queryParameters: {'SKUID': skuid, 'customerID': customerId},
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool?> removeAllFromWishlist({required int customerId}) async {
    final response = await postData(
      path: 'profile/WishList/removeall',
      queryParameters: {'customerID': customerId},
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool?> removeFromWishlist(
      {required int customerId, required int skuid}) async {
    final response = await postData(
      path: 'profile/WishList/remove',
      queryParameters: {'SKUID': skuid, 'CustomerID': customerId},
    );
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data ?? true;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class WishlistWebServices {
  Future<List<WishlistProductsModel>> getWishlist({required int customerId});
  Future<bool?> addToWishlist({required int customerId, required int skuid});
  Future<bool?> removeFromWishlist(
      {required int customerId, required int skuid});
  Future<bool?> removeAllFromWishlist({required int customerId});

  /// Move to cart by passing customerId and skuId
  Future<bool?> moveToCart({required int customerId, required int skuid});
}
