class OrderHistory {
  String? uniqueId,
      orderId,
      orderStatus,
      customerPaymentType,
      customerName,
      customerMobile,
      customerAddress,
      customerProfilePicture,
      dispatchDateTime;
  int? orderTotalQuantity;
  double? orderTotalAmount;

  OrderHistory(
      {this.uniqueId,
      this.orderId,
      this.orderStatus,
      this.customerPaymentType,
      this.customerName,
      this.customerMobile,
      this.customerAddress,
      this.customerProfilePicture,
      this.dispatchDateTime,
      this.orderTotalQuantity,
      this.orderTotalAmount});
}
