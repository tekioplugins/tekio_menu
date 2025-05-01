import 'package:json_annotation/json_annotation.dart';
import 'package:tekio_menu/models/custom_list_button_model.dart';

part '../generated/models/base_menu_model.g.dart';

@JsonSerializable()
class BaseMenuModel {
  @JsonKey(name: 'menuKey')
  String? menuKey;
  @JsonKey(name: 'menuListItems')
  List<CustomListButtonModel> menuListItems;

  BaseMenuModel({required this.menuListItems, this.menuKey});

  factory BaseMenuModel.fromJson(Map<String, dynamic> json) =>
      _$BaseMenuModelFromJson(json);

  Map<String, dynamic> toJson() => _$BaseMenuModelToJson(this);
}
