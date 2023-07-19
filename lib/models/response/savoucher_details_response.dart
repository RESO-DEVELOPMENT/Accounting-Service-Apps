class SAVoucherDetailsResponse {
  String? id;
  String? voucherCode;
  String? createdBy;
  String? lastUpdateBy;
  String? createdAt;
  String? lastUpdatedAt;
  String? status;
  String? storeName;
  num? totalAmount;
  num? finalAmount;
  num? vatAmount;
  String? accountingDate;
  String? voucherDate;
  String? description;
  String? payment;
  String? notes;
  List<SAVoucherItems>? items;

  SAVoucherDetailsResponse(
      {this.id,
      this.voucherCode,
      this.createdBy,
      this.lastUpdateBy,
      this.createdAt,
      this.lastUpdatedAt,
      this.status,
      this.storeName,
      this.totalAmount,
      this.finalAmount,
      this.vatAmount,
      this.accountingDate,
      this.voucherDate,
      this.description,
      this.payment,
      this.notes,
      this.items});

  SAVoucherDetailsResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    voucherCode = json['voucherCode'];
    createdBy = json['createdBy'];
    lastUpdateBy = json['lastUpdateBy'];
    createdAt = json['createdAt'];
    lastUpdatedAt = json['lastUpdatedAt'];
    status = json['status'];
    storeName = json['storeName'];
    totalAmount = json['totalAmount'];
    finalAmount = json['finalAmount'];
    vatAmount = json['vatAmount'];
    accountingDate = json['accountingDate'];
    voucherDate = json['voucherDate'];
    description = json['description'];
    payment = json['payment'];
    notes = json['notes'];
    if (json['items'] != null) {
      items = <SAVoucherItems>[];
      json['items'].forEach((v) {
        items!.add(SAVoucherItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['voucherCode'] = voucherCode;
    data['createdBy'] = createdBy;
    data['lastUpdateBy'] = lastUpdateBy;
    data['createdAt'] = createdAt;
    data['lastUpdatedAt'] = lastUpdatedAt;
    data['status'] = status;
    data['storeName'] = storeName;
    data['totalAmount'] = totalAmount;
    data['finalAmount'] = finalAmount;
    data['vatAmount'] = vatAmount;
    data['accountingDate'] = accountingDate;
    data['voucherDate'] = voucherDate;
    data['description'] = description;
    data['payment'] = payment;
    data['notes'] = notes;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SAVoucherItems {
  String? id;
  String? name;
  String? unit;
  num? unitPrice;
  num? quantity;
  num? finalAmount;
  num? totalAmount;
  num? vatAmount;

  SAVoucherItems(
      {this.id,
      this.name,
      this.unit,
      this.unitPrice,
      this.quantity,
      this.finalAmount,
      this.totalAmount,
      this.vatAmount});

  SAVoucherItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    unit = json['unit'];
    unitPrice = json['unitPrice'];
    quantity = json['quantity'];
    finalAmount = json['finalAmount'];
    totalAmount = json['totalAmount'];
    vatAmount = json['vatAmount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['unit'] = unit;
    data['unitPrice'] = unitPrice;
    data['quantity'] = quantity;
    data['finalAmount'] = finalAmount;
    data['totalAmount'] = totalAmount;
    data['vatAmount'] = vatAmount;
    return data;
  }
}
