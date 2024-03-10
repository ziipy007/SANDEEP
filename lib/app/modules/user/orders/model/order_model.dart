class OrdersList {
  String orderDate;
  String totalParcel;
  String parcelPrice;
  String userImage;
  String userName;
  String deliverFrom;
  String deliverFromTime;
  String deliverTo;
  String deliverToTime;

  OrdersList(
      {required this.orderDate,
      required this.totalParcel,
      required this.parcelPrice,
      required this.userImage,
      required this.userName,
      required this.deliverFrom,
      required this.deliverFromTime,
      required this.deliverTo,
      required this.deliverToTime});

  static OrdersList fromJson(json) => OrdersList(
        orderDate: json['orderDate'],
        totalParcel: json['totalParcel'],
        parcelPrice: json['parcelPrice'],
        userImage: json['userImage'],
        userName: json['userName'],
        deliverFrom: json['deliverFrom'],
        deliverFromTime: json['deliverFromTime'],
        deliverTo: json['deliverTo'],
        deliverToTime: json['deliverToTime'],
      );
}
