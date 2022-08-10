class PurchaseModel {
  String? id;
  String? productID;
  String? purchaseData;
  num purchasePrice;
  num quantity;

  PurchaseModel(
      {this.id,
      this.productID,
      this.purchaseData,
      required this.purchasePrice,
      required this.quantity});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'productID': productID,
      'purchaseData': purchaseData,
      'purchasePrice': purchasePrice,
      'quantity': quantity,
    };
  }

  factory PurchaseModel.fromMap(Map<String, dynamic> map) => PurchaseModel(
      id: map['id'],
      productID: map['productID'],
      purchaseData: map['purchaseData'],
      purchasePrice: map['purchasePrice'],
      quantity: map['quantity']);
}
