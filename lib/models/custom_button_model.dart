import 'package:json_annotation/json_annotation.dart';

part '../generated/models/custom_button_model.g.dart';

@JsonSerializable()
class CustomButtonModel {
  @JsonKey(name: 'iconCode')
  String? iconCode;
  @JsonKey(name: 'imageUrl')
  String? imageUrl;
  @JsonKey(name: 'label')
  String? label;
  @JsonKey(name: 'navPath')
  String navPath;

  CustomButtonModel({
    this.iconCode,
    this.imageUrl,
    this.label,
    required this.navPath,
  });

  factory CustomButtonModel.fromJson(Map<String, dynamic> json) =>
      _$CustomButtonModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomButtonModelToJson(this);
}
