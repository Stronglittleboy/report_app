import 'package:json_annotation/json_annotation.dart';
import 'package:report_app/generated/json/base/json_convert_content.dart';
import 'package:report_app/generated/json/base/json_field.dart';

class UserInfo with JsonConvert<UserInfo>{
  @JSONField()
  String password;
  @JSONField()
  String realName;
  @JSONField()
  String userName;

  UserInfo({this.password, this.userName});
}