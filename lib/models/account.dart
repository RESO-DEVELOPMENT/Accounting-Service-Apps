class AccountModel {
  String? accessToken;
  String? id;
  String? username;
  String? name;
  String? role;
  String? status;

  AccountModel(
      {this.accessToken,
      this.id,
      this.username,
      this.name,
      this.role,
      this.status});

  AccountModel.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    id = json['id'];
    username = json['username'];
    name = json['name'];
    role = json['role'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accessToken'] = accessToken;
    data['id'] = id;
    data['username'] = username;
    data['name'] = name;
    data['role'] = role;
    data['status'] = status;
    return data;
  }
}
