import 'package:flutter_test/flutter_test.dart';
import 'package:linktsp_api/linktsp_api.dart';

import '../../const.dart';

void main() async {
  await LinkTspApi.init(domain: domain, admin: admin);
  LinkTspApi linkTspApi = LinkTspApi();
  group('addresses', () {
    test('get all addresses', () async {
      try {
        await linkTspApi.address.getAddressBook(customId: 32);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('get shipment addresses', () async {
      try {
        await linkTspApi.address.getShipmentAddresses(customId: 32);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('save address', () async {
      // if id null that is editing an existing address and else that is adding new address
      final addressModel = AddressModel(
        id: 40284,
        apartment: "1",
        building: "1",
        customerId: 32,
        floor: "1",
        isDefault: false,
        zoneId: 43,
        city: const CityModel(id: 118, name: "Nasr City"),
        firstName: "Omar",
        lastName: "Khaled",
        name: "Home Address",
        address: "Zahraa Madinat Nasr",
        mobile: "01098315351",
        postalCode: "02",
        latitude: 30.110972,
        longitude: 31.317374,
      );
      try {
        await linkTspApi.address.saveAddress(addressModel: addressModel);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('get address details', () async {
      try {
        await linkTspApi.address.getAddressDetails(addressId: 40284);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });

    test('delete address', () async {
      try {
        await linkTspApi.address.getAddressDetails(addressId: 40290);
        expect(true, true);
      } catch (e) {
        expect(true, false);
      }
    });
  }); // closure of group
}
