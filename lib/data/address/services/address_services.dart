import 'package:linktsp_api/data/address/models/address_model.dart';
import 'package:linktsp_api/data/default_api.dart';
import 'package:linktsp_api/data/exception_api.dart';
import 'package:linktsp_api/data/result_model.dart';

class AddressServicesImp extends DefaultApi implements AddressServices {
  AddressServicesImp({String defaultPath = ''}) : super(defaultPath);

  @override
  Future<List<AddressModel>> getAddressBook({required int customId}) async {
    final response = await getData(
        path: 'profile/address', queryParameters: {"CustomerID": customId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return List<AddressModel>.from(
          result.data.map((model) => AddressModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<List<AddressModel>> getShipmentAddresses(
      {required int customId}) async {
    final response = await getData(
        path: 'profile/shipmentaddresses',
        queryParameters: {"CustomerID": customId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return List<AddressModel>.from(
          result.data.map((model) => AddressModel.fromJson(model)));
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<AddressModel> saveAddress({required AddressModel addressModel}) async {
    final response =
        await postData(data: addressModel, path: 'profile/address/save');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return AddressModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<AddressModel> getAddressDetails({required int addressId}) async {
    final response = await getData(path: 'profile/address/$addressId');
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return AddressModel.fromJson(result.data);
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }

  @override
  Future<bool> deleteAddress({required int addressId}) async {
    final response = await postData(
        path: 'profile/address/delete',
        queryParameters: {"AddressID": addressId});
    final result = ApiReturnResult.fromJSON(response.data);
    if (result.code == 200) {
      return result.data;
    } else {
      throw ExceptionApi(code: result.code, message: result.error?.first);
    }
  }
}

abstract class AddressServices {
  Future<List<AddressModel>> getAddressBook({required int customId});
  Future<List<AddressModel>> getShipmentAddresses({required int customId});
  Future<AddressModel> saveAddress({required AddressModel addressModel});
  Future<AddressModel> getAddressDetails({required int addressId});
  Future<bool> deleteAddress({required int addressId});
}
