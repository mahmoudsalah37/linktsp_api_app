import 'package:linktsp_api/data/list/models/list_model.dart';
import 'package:linktsp_api/data/list/models/new_list_model.dart' as new_model;
import '../../default_api.dart';
import '../../exception_api.dart';
import '../../result_model.dart';
import '../models/demo_list_data_model.dart';

class ListServiceImp implements ListService {
  ListServiceImp({required this.defaultApi});
  final DefaultApi defaultApi;

  @override
  Future<FilterDataModel> getFilterOptionsData({
    required ListModel listModel,
    int version = 3,
  }) async {
    final respose = await defaultApi.postData(
      path: 'List/filter',
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
  Future<DemoNewListingDataModel> demoGetListingWithCategory({
    required ListModel listModel,
    int version = 3,
  }) async {
    final respose = await defaultApi.postData(
      path: 'List/list',
      version: version,
      data: listModel,
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return DemoNewListingDataModel.fromJson(result.data);
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
  Future<List<new_model.ListingItem>> getListingWithFilter({
    required ListModel listModel,
    int version = 3,
  }) async {
    final respose = await defaultApi.postData(
      path: 'List/Search',
      version: version,
      data: listModel,
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      if (result.data == null) {
        return [];
      }
      return (result.data["productSearchResult"] as List?)
              ?.map((e) => new_model.ListingItem.fromJson(e))
              .toList() ??
          [];
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
  Future<DemoNewListingDataModel> demoGetListingWithCategory({
    required ListModel listModel,
    int version = 3,
  });

  /// Get list of products by category id
  Future<new_model.NewListingDataModel> getListingWithCategory({
    required ListModel listModel,
    int version = 1,
  });
  Future<List<new_model.ListingItem>> getListingWithFilter({
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
