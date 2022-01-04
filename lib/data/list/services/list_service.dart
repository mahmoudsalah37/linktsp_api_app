import 'package:linktsp_api/data/list/models/list_model.dart';

import '../../default_api.dart';
import '../../exception_api.dart';
import '../../result_model.dart';

class ListServiceImp implements ListService {
  ListServiceImp({required this.defaultApi});
  final DefaultApi defaultApi;

  @override
  Future<FilterDataModel> getFilterOptionsData(
      {required ListModel listModel}) async {
    final respose = await defaultApi.postData(
      path: 'filter',
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
  Future<ListingDataModel> getListingWithCategory(
      {required ListModel listModel}) async {
    final respose = await defaultApi.postData(
      path: 'list',
      data: listModel,
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return ListingDataModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<ListingDataModel> getListingWithFilter(
      {required ListModel listModel}) async {
    final respose = await defaultApi.postData(
      path: 'Search',
      data: listModel,
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      print("result: ${result.data}");
      return result.data == null
          ? ListingDataModel(items: [], length: 0)
          : ListingDataModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<ListingDataModel> getListingWithSort(
      {required ListModel listModel}) async {
    final respose = await defaultApi.postData(
      path: 'List',
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
  Future<ListingDataModel> getListingWithCategory(
      {required ListModel listModel});
  Future<ListingDataModel> getListingWithFilter({required ListModel listModel});
  Future<ListingDataModel> getListingWithSort({required ListModel listModel});

  /// Get filter options to use in filter
  Future<FilterDataModel> getFilterOptionsData({required ListModel listModel});
}
