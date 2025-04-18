// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/base_menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseMenuModel _$BaseMenuModelFromJson(
  Map<String, dynamic> json,
) => BaseMenuModel(
  homeListItems:
      (json['homeListItems'] as List<dynamic>)
          .map((e) => CustomListButtonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$BaseMenuModelToJson(BaseMenuModel instance) =>
    <String, dynamic>{'homeListItems': instance.homeListItems};
