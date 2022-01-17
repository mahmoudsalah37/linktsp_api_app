import 'package:linktsp_api/data/list/models/list_model.dart';
import 'package:linktsp_api/data/list/models/new_list_model.dart';

import '../../default_api.dart';
import '../../exception_api.dart';
import '../../result_model.dart';

class ListServiceImp implements ListService {
  ListServiceImp({required this.defaultApi});
  final DefaultApi defaultApi;

  @override
  Future<FilterDataModel> getFilterOptionsData({
    required ListModel listModel,
    int version = 1,
  }) async {
    final respose = await defaultApi.postData(
      path: 'filter',
      version: version,
      data: listModel,
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return FilterDataModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<NewListingDataModel> getListingWithCategory({
    required ListModel listModel,
    int version = 1,
  }) async {
    final respose = await defaultApi.postData(
      path: version == 1 ? 'list' : 'List/list',
      version: version,
      data: listModel,
    );
    print("path: ${version == 1 ? 'list' : 'List/list'}");
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return result.data == null
          ? NewListingDataModel(items: [], length: 0)
          : NewListingDataModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<ListingDataModel> getListingWithFilter({
    required ListModel listModel,
    int version = 1,
  }) async {
    final respose = await defaultApi.postData(
      path: 'Search',
      version: version,
      data: listModel,
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return result.data == null
          ? ListingDataModel(items: [], length: 0)
          : ListingDataModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<ListingDataModel> getListingWithSort({
    required ListModel listModel,
    int version = 1,
  }) async {
    final respose = await defaultApi.postData(
      path: 'List',
      version: version,
      data: listModel,
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return ListingDataModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class ListService {
  /// Get list of products by category id
  Future<NewListingDataModel> getListingWithCategory({
    required ListModel listModel,
    int version = 1,
  });
  Future<ListingDataModel> getListingWithFilter({
    required ListModel listModel,
    int version = 1,
  });
  Future<ListingDataModel> getListingWithSort({
    required ListModel listModel,
    int version = 1,
  });

  /// Get filter options to use in filter
  Future<FilterDataModel> getFilterOptionsData({
    required ListModel listModel,
    int version = 1,
  });
}
