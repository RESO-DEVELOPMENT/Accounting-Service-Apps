class MisaConnectRequestModel {
  String? appId;
  String? accessCode;
  String? orgCompanyCode;

  MisaConnectRequestModel({this.appId, this.accessCode, this.orgCompanyCode});

  MisaConnectRequestModel.fromJson(Map<String, dynamic> json) {
    appId = json['app_id'];
    accessCode = json['access_code'];
    orgCompanyCode = json['org_company_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['app_id'] = appId;
    data['access_code'] = accessCode;
    data['org_company_code'] = orgCompanyCode;
    return data;
  }
}
