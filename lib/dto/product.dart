import 'package:report_app/generated/json/base/json_convert_content.dart';
import 'package:report_app/generated/json/base/json_field.dart';

class Product with JsonConvert<Product> {
  /// 产品名称
  @JSONField()
  String productName;

  /// 规格
  @JSONField()
  String specification;

  /// 数量
  @JSONField()
  int num;

  //颜色
  @JSONField()
  String color;

  Product({this.productName, this.specification, this.num, this.color});
}