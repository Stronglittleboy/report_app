import 'package:report_app/dto/UserInfo.dart';
import 'package:json_annotation/json_annotation.dart';

userInfoFromJson(UserInfo data, Map<String, dynamic> json) {
	if (json['password'] != null) {
		data.password = json['password']?.toString();
	}
	if (json['realName'] != null) {
		data.realName = json['realName']?.toString();
	}
	if (json['userName'] != null) {
		data.userName = json['userName']?.toString();
	}
	return data;
}

Map<String, dynamic> userInfoToJson(UserInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['password'] = entity.password;
	data['realName'] = entity.realName;
	data['userName'] = entity.userName;
	return data;
}