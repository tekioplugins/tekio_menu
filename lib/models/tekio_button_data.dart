import 'package:json_annotation/json_annotation.dart';

part '../generated/models/tekio_button_data.g.dart';

@JsonSerializable()
class TekioButtonData {
  @JsonKey(name: 'order')
  int? order;
  @JsonKey(name: 'iconCode')
  String? iconCode;
  @JsonKey(name: 'imageUrl')
  String? imageUrl;
  @JsonKey(name: 'label')
  String? label;
  @JsonKey(name: 'navPath')
  String navPath;

  TekioButtonData({
    this.order,
    this.iconCode,
    this.imageUrl,
    this.label,
    required this.navPath,
  });

  factory TekioButtonData.fromJson(Map<String, dynamic> json) =>
      _$TekioButtonDataFromJson(json);

  Map<String, dynamic> toJson() => _$TekioButtonDataToJson(this);
}
