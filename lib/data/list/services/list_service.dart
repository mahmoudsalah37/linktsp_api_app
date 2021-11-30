import 'package:linktsp_api/data/list/models/list_model.dart';

import '../../default_api.dart';
import '../../result_model.dart';

class ServiceImp extends DefaultApi implements Service {
  ServiceImp({String defaultPath = ''}) : super(defaultPath);

  @override
  Future<FilterDataModel> getFilterOptionsData(
      {required ListModel listModel}) async {
    // TODO: implement getListingWithCategory
    throw UnimplementedError();
  }

  @override
  Future<ListingDataModel> getListingWithCategory(
      {required ListModel listModel}) {
    // TODO: implement getListingWithCategory
    throw UnimplementedError();
  }

  @override
  Future<ListingDataModel> getListingWithFilter(
      {required ListModel listModel}) {
    // TODO: implement getListingWithFilter
    throw UnimplementedError();
  }

  @override
  Future<ListingDataModel> getListingWithSort({required ListModel listModel}) {
    // TODO: implement getListingWithSort
    throw UnimplementedError();
  }
}

abstract class Service {
  Future<ListingDataModel> getListingWithCategory(
      {required ListModel listModel});
  Future<ListingDataModel> getListingWithFilter({required ListModel listModel});
  Future<ListingDataModel> getListingWithSort({required ListModel listModel});
  Future<FilterDataModel> getFilterOptionsData({required ListModel listModel});
}
