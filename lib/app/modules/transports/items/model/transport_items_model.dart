class TransportsItem {
  String itemName;
  String itemPrice;
  String itemLabel;
  String itemMessage;
  String ratingCount;
  String itemRating;
  String itemImage;

  TransportsItem(
      {required this.itemName,
      required this.itemPrice,
      required this.itemLabel,
      required this.itemMessage,
      required this.ratingCount,
      required this.itemRating, 
      required this.itemImage
      });

  static TransportsItem fromJson(json) => TransportsItem(
        itemName: json['itemName'],
        itemPrice: json['itemPrice'],
        itemLabel: json['itemLabel'],
        itemMessage: json['itemMessage'],
        ratingCount: json['ratingCount'],
        itemRating: json['itemRating'],
        itemImage : json['itemImage'],
      );
}
