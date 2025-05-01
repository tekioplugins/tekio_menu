// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/base_menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseMenuModel _$BaseMenuModelFromJson(
  Map<String, dynamic> json,
) => BaseMenuModel(
  menuListItems:
      (json['menuListItems'] as List<dynamic>)
          .map((e) => CustomListButtonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  menuKey: json['menuKey'] as String?,
);

Map<String, dynamic> _$BaseMenuModelToJson(BaseMenuModel instance) =>
    <String, dynamic>{
      'menuKey': instance.menuKey,
      'menuListItems': instance.menuListItems,
    };
