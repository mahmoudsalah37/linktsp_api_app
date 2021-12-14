import 'package:linktsp_api/core/models/city_model.dart';
import 'package:linktsp_api/core/models/store.dart';
import 'package:linktsp_api/data/lookup/models/lookup_model.dart';

import '../../default_api.dart';
import '../../exception_api.dart';
import '../../result_model.dart';

class LookUpServiceImp implements LookUpService {
  LookUpServiceImp({required this.defaultApi});
  final DefaultApi defaultApi;

  @override
  Future<List<CancelReasonLookupModel>> getCancelReasonLookup() async {
    final respose = await defaultApi.getData(
      path: 'lookup/CancelReason',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<CancelReasonLookupModel>.from(
          result.data.map((model) => CancelReasonLookupModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<CityModel>> getCities() async {
    final respose = await defaultApi.getData(
      path: 'lookup/city',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<CityModel>.from(
          result.data.map((model) => CityModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<CityModel>> getCityPerZoneLookup() async {
    final respose = await defaultApi.getData(
      path: 'lookup/CityPerZone',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<CityModel>.from(
          result.data.map((model) => CityModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<ComplaintLookupModel>> getComplaintLookup() async {
    final respose = await defaultApi.getData(
      path: 'lookup/ComplaintReason',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<ComplaintLookupModel>.from(
          result.data.map((model) => ComplaintLookupModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<FeedbackReasonsLookupModel>> getFeedbackReasonsLookup() async {
    final respose = await defaultApi.getData(
      path: 'lookup/feedbackreasons',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<FeedbackReasonsLookupModel>.from(result.data
          .map((model) => FeedbackReasonsLookupModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<CityModel>> getStoreCityLookup() async {
    final respose = await defaultApi.getData(
      path: 'lookup/StoreCity',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<CityModel>.from(
          result.data.map((model) => CityModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<StoreModel>> getStores() async {
    final respose = await defaultApi.getData(
      path: 'lookup/store',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<StoreModel>.from(
          result.data.map((model) => StoreModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<CityModel>> getZoneLookup() async {
    final respose = await defaultApi.getData(
      path: 'lookup/Zone',
    );
    final result = ApiReturnResult.fromJSON(respose.data);
    if (result.code == 200) {
      return List<CityModel>.from(
          result.data.map((model) => CityModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class LookUpService {
  Future<List<CityModel>> getCities();
  Future<List<StoreModel>> getStores();
  Future<List<ComplaintLookupModel>> getComplaintLookup();
  Future<List<CancelReasonLookupModel>> getCancelReasonLookup();
  Future<List<CityModel>> getZoneLookup();
  Future<List<CityModel>> getStoreCityLookup();
  Future<List<CityModel>> getCityPerZoneLookup();
  Future<List<FeedbackReasonsLookupModel>> getFeedbackReasonsLookup();
}
