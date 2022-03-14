import 'package:linktsp_api/data/list/models/list_model.dart';
import 'package:linktsp_api/data/list/models/new_list_model.dart' as new_model;
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
      path: version == 1 ? 'filter' : 'List/filter',
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
  Future<new_model.NewListingDataModel> getListingWithCategory({
    required ListModel listModel,
    int version = 1,
  }) async {
    final respose = await defaultApi.postData(
      path: version == 1 ? 'list' : 'List/list',
      version: version,
      data: listModel,
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return result.data == null
          ? new_model.NewListingDataModel(
              items: <new_model.ListingItem>[], length: 0)
          : new_model.NewListingDataModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<new_model.NewListingDataModel> getListingWithFilter({
    required ListModel listModel,
    int version = 1,
  }) async {
    final respose = await defaultApi.postData(
      path: version == 1 ? 'Search' : 'List/Search',
      version: version,
      data: listModel,
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return new_model.NewListingDataModel.fromJson(result.data);
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
  Future<new_model.NewListingDataModel> getListingWithCategory({
    required ListModel listModel,
    int version = 1,
  });
  Future<new_model.NewListingDataModel> getListingWithFilter({
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
