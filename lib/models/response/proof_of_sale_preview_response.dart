class ProofOfSalePreviewModel {
  String? id;
  String? storeName;
  String? code;
  String? createdAt;
  String? status;
  String? payment;
  String? createdBy;
  int? totalAmount;
  String? invoicePicUrl;

  ProofOfSalePreviewModel(
      {this.id,
      this.storeName,
      this.code,
      this.createdAt,
      this.status,
      this.payment,
      this.createdBy,
      this.totalAmount,
      this.invoicePicUrl});

  ProofOfSalePreviewModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    storeName = json['storeName'];
    code = json['code'];
    createdAt = json['createdAt'];
    status = json['status'];
    payment = json['payment'];
    createdBy = json['createdBy'];
    totalAmount = json['totalAmount'];
    invoicePicUrl = json['invoicePicUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['storeName'] = storeName;
    data['code'] = code;
    data['createdAt'] = createdAt;
    data['status'] = status;
    data['payment'] = payment;
    data['createdBy'] = createdBy;
    data['totalAmount'] = totalAmount;
    data['invoicePicUrl'] = invoicePicUrl;
    return data;
  }
}
