import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    this.loginName,
    this.loginImage,
  });

  String loginName;
  String loginPrice;
  String loginImage;
  String loginDescription;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        loginName: json["login_name"],
        loginImage: json["login_image"],
      );

  Map<String, dynamic> toJson() => {
        "login_name": loginName,
        "login_image": loginImage,
      };
}
