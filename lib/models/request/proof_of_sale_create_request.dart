class ProofOfSaleModel {
  String? code;
  String? payment;
  num? totalAmount;
  num? vatAmount;
  num? finalAmount;
  String? description;
  List<Items>? items;

  ProofOfSaleModel(
      {this.code,
      this.payment,
      this.totalAmount,
      this.vatAmount,
      this.finalAmount,
      this.description,
      this.items});

  ProofOfSaleModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    payment = json['payment'];
    totalAmount = json['totalAmount'];
    vatAmount = json['vatAmount'];
    finalAmount = json['finalAmount'];
    description = json['description'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['payment'] = payment;
    data['totalAmount'] = totalAmount;
    data['vatAmount'] = vatAmount;
    data['finalAmount'] = finalAmount;
    data['description'] = description;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? inventoryItemId;
  String? unitName;
  String? name;
  String? code;
  num? unitPrice;
  int? quantity;
  num? finalAmount;
  num? totalAmount;
  num? vatAmount;

  Items(
      {this.inventoryItemId,
      this.unitName,
      this.name,
      this.unitPrice,
      this.code,
      this.quantity,
      this.finalAmount,
      this.totalAmount,
      this.vatAmount});

  Items.fromJson(Map<String, dynamic> json) {
    inventoryItemId = json['inventoryItemId'];
    quantity = json['quantity'];
    unitPrice = json['unitPrice'];
    finalAmount = json['finalAmount'];
    totalAmount = json['totalAmount'];
    vatAmount = json['vatAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['inventoryItemId'] = inventoryItemId;
    data['quantity'] = quantity;
    data['unitPrice'] = unitPrice;
    data['finalAmount'] = finalAmount;
    data['totalAmount'] = totalAmount;
    data['vatAmount'] = vatAmount;
    return data;
  }
}
