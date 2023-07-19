class InventoryItem {
  String? id;
  String? name;
  String? code;
  String? description;
  num? type;
  num? unitPrice;
  num? salePrice1;
  num? salePrice2;
  num? salePrice3;
  String? unitId;
  String? unitName;
  num? taxRate;
  String? categoryId;
  String? categoryName;

  InventoryItem(
      {this.id,
      this.name,
      this.code,
      this.description,
      this.type,
      this.unitPrice,
      this.salePrice1,
      this.salePrice2,
      this.salePrice3,
      this.unitId,
      this.unitName,
      this.taxRate,
      this.categoryId,
      this.categoryName});

  InventoryItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    description = json['description'];
    type = json['type'];
    unitPrice = json['unitPrice'];
    salePrice1 = json['salePrice1'];
    salePrice2 = json['salePrice2'];
    salePrice3 = json['salePrice3'];
    unitId = json['unitId'];
    unitName = json['unitName'];
    taxRate = json['taxRate'];
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['code'] = code;
    data['description'] = description;
    data['type'] = type;
    data['unitPrice'] = unitPrice;
    data['salePrice1'] = salePrice1;
    data['salePrice2'] = salePrice2;
    data['salePrice3'] = salePrice3;
    data['unitId'] = unitId;
    data['unitName'] = unitName;
    data['taxRate'] = taxRate;
    data['categoryId'] = categoryId;
    data['categoryName'] = categoryName;
    return data;
  }
}
