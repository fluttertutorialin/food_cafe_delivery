class PickUp {
  String? uniqueId,
      orderId,
      customerPaymentType,
      customerName,
      customerMobile,
      customerAddress,
      customerProfilePicture,
      pickUpDateTime;
  int? orderTotalItem;
  double? orderTotalAmount;

  PickUp(
      {this.uniqueId,
      this.orderId,
      this.customerPaymentType,
      this.customerName,
      this.customerMobile,
      this.customerAddress,
      this.customerProfilePicture,
      this.pickUpDateTime,
      this.orderTotalItem,
      this.orderTotalAmount});
}
