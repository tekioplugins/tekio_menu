import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tekio_menu/models/tekio_list_button_data.dart';

part '../generated/models/tekio_menu_data.g.dart';

@JsonSerializable()
class TekioMenuData {
  @JsonKey(name: 'menuKey')
  String? menuKey;
  @JsonKey(name: 'menuListItems')
  List<TekioListButtonData> menuListItems;

  TekioMenuData({
    required List<TekioListButtonData> menuListItems,
    this.menuKey,
  }) : menuListItems = menuListItems.sorted(
         (a, b) => (a.order ?? 0).compareTo((b.order ?? 0)),
       );

  factory TekioMenuData.fromJson(Map<String, dynamic> json) =>
      _$TekioMenuDataFromJson(json);

  Map<String, dynamic> toJson() => _$TekioMenuDataToJson(this);
}
