class PickUp {
  String? uniqueId,
      orderId,
      customerPaymentType,
      customerName,
      customerMobile,
      customerAddress,
      customerProfilePicture,
      pickUpDateTime;
  int? orderTotalQuantity;
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
      this.orderTotalQuantity,
      this.orderTotalAmount});
}
