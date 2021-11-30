import 'package:linktsp_api/data/wishlist/models/wishlist_model.dart';

abstract class WishlistWebServices {
  Future<List<WishlistProductsModel>> getWishlist({required int customerId});
  Future<bool> addToWishlist({required int customerId, required int skuid});
}
