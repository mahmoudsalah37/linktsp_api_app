// import 'package:flutter_test/flutter_test.dart';
// import 'package:linktsp_api/linktsp_api.dart';

// import '../../const.dart';

// void main() async {
//   await LinkTspApi.init(domain: domain, admin: admin);
//   LinkTspApi linkTspApi = LinkTspApi();

//   group('cancel order', () {
//     test('cancel order', () async {
//       final cancelReasonModel = CancelReasonModel(
//         customerId: 32,
//         orderId: 98,
//         reasonId: 8,
//         content: "cancel",
//         zoneId: 30,
//       );
//       try {
//         await linkTspApi.cancelOrder
//             .cancelOrder(cancelReasonModel: cancelReasonModel);
//         expect(true, true);
//       } catch (e) {
//         expect(true, false);
//       }
//     });
//   }); // closure of group
// }
