class MisaResponseModel {
  bool? success;
  String? errorMessage;
  MisaResponseModel({this.success, this.errorMessage});

  MisaResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['Success'];
    errorMessage = json['ErrorMessage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Success'] = success;
    data['ErrorMessage'] = errorMessage;
    return data;
  }
}
