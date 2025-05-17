import 'package:flutter/material.dart';
import 'package:tekio_menu/models/tekio_data.dart';
import 'package:tekio_menu/utils/tekio_menu_notifier.dart';

class TekioImageButton extends Builder {
  final TekioMenuButtonData menuButton;

  TekioImageButton({required this.menuButton})
    : super(
        key: Key(menuButton.menuButtonKey ?? UniqueKey().toString()),
        builder:
            (context) => Row(
              spacing: menuButton.menuButtonSpacing,
              children:
                  menuButton.buttonItems
                      .map(
                        (e) => Expanded(
                          child: InkWell(
                            key: Key(e.buttonKey ?? UniqueKey().toString()),
                            onTap:
                                () => TekioMenuNotifier(
                                  navPath: e.navPath,
                                ).dispatch(context),
                            child: Ink(
                              height: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage(e.imageUrl ?? ''),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child:
                                  e.label != null
                                      ? Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10.0,
                                            bottom: 10.0,
                                          ),
                                          child: Text(
                                            e.label ?? '',
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.titleMedium,
                                          ),
                                        ),
                                      )
                                      : const SizedBox.shrink(),
                            ),
                          ),
                        ),
                      )
                      .toList(),
            ),
      );
}
