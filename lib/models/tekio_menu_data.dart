import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'tekio_data.dart';

part '../generated/models/tekio_menu_data.g.dart';

@JsonSerializable()
class TekioMenuData {
  @JsonKey(name: 'menuKey')
  String? menuKey;
  @JsonKey(name: 'menuListButtons', defaultValue: [])
  List<TekioMenuButtonData> menuListButtons;

  TekioMenuData({
    required List<TekioMenuButtonData> menuListButtons,
    this.menuKey,
  }) : menuListButtons = menuListButtons.sorted(
         (a, b) => (a.order ?? 0).compareTo((b.order ?? 0)),
       );

  factory TekioMenuData.fromJson(Map<String, dynamic> json) =>
      _$TekioMenuDataFromJson(json);

  Map<String, dynamic> toJson() => _$TekioMenuDataToJson(this);
}
