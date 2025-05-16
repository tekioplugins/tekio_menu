// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../models/tekio_menu_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TekioMenuData _$TekioMenuDataFromJson(Map<String, dynamic> json) =>
    TekioMenuData(
      menuListButtons:
          (json['menuListButtons'] as List<dynamic>?)
              ?.map(
                (e) => TekioMenuButtonData.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
      menuKey: json['menuKey'] as String?,
    );

Map<String, dynamic> _$TekioMenuDataToJson(TekioMenuData instance) =>
    <String, dynamic>{
      'menuKey': instance.menuKey,
      'menuListButtons': instance.menuListButtons,
    };
