import 'package:json_annotation/json_annotation.dart';
import 'package:tekio_menu/models/custom_button_enum.dart';
import 'package:tekio_menu/models/custom_button_model.dart';

part '../generated/models/custom_list_button_model.g.dart';

@JsonSerializable()
class CustomListButtonModel {
  @JsonKey(name: 'buttonListKey')
  String? buttonListKey;
  @JsonKey(name: 'buttonType')
  CustomButtonEnum? buttonType;
  @JsonKey(name: 'buttonItems')
  List<CustomButtonModel> buttonItems;

  CustomListButtonModel({required this.buttonType, required this.buttonItems});

  factory CustomListButtonModel.fromJson(Map<String, dynamic> json) =>
      _$CustomListButtonModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomListButtonModelToJson(this);
}
