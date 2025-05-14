// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/tekio_menu_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TekioMenuData _$TekioMenuDataFromJson(Map<String, dynamic> json) =>
    TekioMenuData(
      menuListItems:
          (json['menuListItems'] as List<dynamic>)
              .map(
                (e) => TekioListButtonData.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
      menuKey: json['menuKey'] as String?,
    );

Map<String, dynamic> _$TekioMenuDataToJson(TekioMenuData instance) =>
    <String, dynamic>{
      'menuKey': instance.menuKey,
      'menuListItems': instance.menuListItems,
    };
