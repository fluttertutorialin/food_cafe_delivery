import 'package:flutter/material.dart';

import '../model/pick_up/pick_up.dart';
import '../model/pick_up/pick_up_response.dart';
import 'package:get/get.dart';

class PickUpController extends GetxController {
  PickUpController();

  final _pickUpRxList = Rxn<List<PickUp?>>();
  List<PickUp?>? get pickUpList => _pickUpRxList.value;

  var searchController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    _pickUpFetch();
  }

  _pickUpFetch() {
    var pickUpResponse = PickUpResponse(pickUpList: [
      PickUp(
          uniqueId: '1',
          orderId: '100001',
          customerPaymentType: 'online',
          customerName: 'Lakhani kamlesh',
          customerMobile: '9586331823',
          customerAddress:
              'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
          customerProfilePicture: '',
          pickUpDateTime: '4-10-2021 10:00 PM',
          orderTotalQuantity: 4,
          orderTotalAmount: 450.10),
      PickUp(
          uniqueId: '1',
          orderId: '100001',
          customerPaymentType: 'online',
          customerName: 'Lakhani kamlesh',
          customerMobile: '9586331823',
          customerAddress:
              'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
          customerProfilePicture: '',
          pickUpDateTime: '4-10-2021 10:00 PM',
          orderTotalQuantity: 4,
          orderTotalAmount: 450.10),
      PickUp(
          uniqueId: '1',
          orderId: '100001',
          customerPaymentType: 'online',
          customerName: 'Lakhani kamlesh',
          customerMobile: '9586331823',
          customerAddress:
              'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
          customerProfilePicture: '',
          pickUpDateTime: '4-10-2021 10:00 PM',
          orderTotalQuantity: 4,
          orderTotalAmount: 450.10),
      PickUp(
          uniqueId: '1',
          orderId: '100001',
          customerPaymentType: 'online',
          customerName: 'Lakhani kamlesh',
          customerMobile: '9586331823',
          customerAddress:
              'To. Ravani (Kuba) Ta. Visavadar Dis. Junagadh 362130',
          customerProfilePicture: '',
          pickUpDateTime: '4-10-2021 10:00 PM',
          orderTotalQuantity: 4,
          orderTotalAmount: 450.10)
    ]);

    _pickUpRxList.value = pickUpResponse.pickUpList!;
  }

  orderSingleRemove() {}

  searchPendingOrder(String? value){

  }
}
