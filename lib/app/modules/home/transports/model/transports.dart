class TransportsList {
  String transportImage;
  String transportName;
  String parcelType;
  String transportMessage;
  String oneParcelFees;
  String rating;

  TransportsList(
      {required this.transportImage,
      required this.transportName,
      required this.parcelType,
      required this.transportMessage,
      required this.oneParcelFees,
      required this.rating});

  static TransportsList fromJson(json) => TransportsList(
        transportImage: json['transportImage'],
        transportName: json['transportName'],
        parcelType: json['parcelType'],
        transportMessage: json['transportMessage'],
        oneParcelFees: json['oneParcelFees'],
        rating: json['rating'],
      );
}
