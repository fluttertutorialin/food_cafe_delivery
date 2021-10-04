class Dispatch {
  String? uniqueId,
      orderId,
      customerPaymentType,
      customerName,
      customerMobile,
      customerAddress,
      customerProfilePicture,
      dispatchDateTime;
  int? orderTotalQuantity;
  double? orderTotalAmount;

  Dispatch(
      {this.uniqueId,
      this.orderId,
      this.customerPaymentType,
      this.customerName,
      this.customerMobile,
      this.customerAddress,
      this.customerProfilePicture,
      this.dispatchDateTime,
      this.orderTotalQuantity,
      this.orderTotalAmount});
}
