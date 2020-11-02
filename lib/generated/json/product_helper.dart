import 'package:report_app/dto/product.dart';

productFromJson(Product data, Map<String, dynamic> json) {
	if (json['productName'] != null) {
		data.productName = json['productName']?.toString();
	}
	if (json['specification'] != null) {
		data.specification = json['specification']?.toString();
	}
	if (json['num'] != null) {
		data.num = json['num']?.toInt();
	}
	if (json['color'] != null) {
		data.color = json['color']?.toString();
	}
	return data;
}

Map<String, dynamic> productToJson(Product entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['productName'] = entity.productName;
	data['specification'] = entity.specification;
	data['num'] = entity.num;
	data['color'] = entity.color;
	return data;
}