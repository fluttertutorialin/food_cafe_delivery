import '../model/dispatch/dispatch.dart';
import '../model/dispatch/dispatch_response.dart';
import 'package:get/get.dart';

class DispatchController extends GetxController {
  DispatchController();

  final _dispatchRxList = Rxn<List<Dispatch?>>();
  List<Dispatch?>? get dispatchList => _dispatchRxList.value;

  @override
  void onInit() {
    super.onInit();
    _dispatchFetch();
  }

  _dispatchFetch() {
    var dispatchResponse = DispatchResponse(dispatchList: [
      Dispatch(
          uniqueId: '1',
          orderId: '100001',
          customerPaymentType: 'online',
          customerName: 'Lakhani kamlesh',
          customerMobile: '9586331823',
          customerAddress: 'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
          customerProfilePicture: '',
          dispatchDateTime: '4-10-2021 10:00 PM',
          orderTotalQuantity: 4,
          orderTotalAmount: 450.10),
      Dispatch(
          uniqueId: '1',
          orderId: '100001',
          customerPaymentType: 'online',
          customerName: 'Lakhani kamlesh',
          customerMobile: '9586331823',
          customerAddress: 'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
          customerProfilePicture: '',
          dispatchDateTime: '4-10-2021 10:00 PM',
          orderTotalQuantity: 4,
          orderTotalAmount: 450.10),
      Dispatch(
          uniqueId: '1',
          orderId: '100001',
          customerPaymentType: 'online',
          customerName: 'Lakhani kamlesh',
          customerMobile: '9586331823',
          customerAddress: 'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
          customerProfilePicture: '',
          dispatchDateTime: '4-10-2021 10:00 PM',
          orderTotalQuantity: 4,
          orderTotalAmount: 450.10),
      Dispatch(
          uniqueId: '1',
          orderId: '100001',
          customerPaymentType: 'online',
          customerName: 'Lakhani kamlesh',
          customerMobile: '9586331823',
          customerAddress: 'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
          customerProfilePicture: '',
          dispatchDateTime: '4-10-2021 10:00 PM',
          orderTotalQuantity: 4,
          orderTotalAmount: 450.10)
    ]);

    _dispatchRxList.value = dispatchResponse.dispatchList!;
  }

  orderDispatchSingleRemove(){

  }

}
