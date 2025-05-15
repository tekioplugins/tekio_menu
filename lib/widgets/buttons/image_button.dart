import 'package:flutter/material.dart';
import 'package:tekio_menu/models/tekio_menu_button_data.dart';
import 'package:tekio_menu/widgets/base_menu_builder.dart';

class TekioImageButton extends StatelessWidget {
  final TekioMenuButtonData menuButton;

  const TekioImageButton({required this.menuButton, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      constraints: const BoxConstraints(maxHeight: 200),
      child: Row(
        children:
            menuButton.buttonItems
                .map(
                  (e) => Flexible(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: WidgetStatePropertyAll(EdgeInsets.zero),
                      ),
                      onPressed:
                          () => TekioMenuNotifier(
                            navPath: e.navPath,
                          ).dispatch(context),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomStart,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image(
                              width: double.infinity,
                              fit: BoxFit.fill,
                              image: NetworkImage(e.imageUrl ?? ''),
                            ),
                          ),
                          if (e.label != null)
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                                bottom: 15.0,
                              ),
                              child: Text(e.label ?? ''),
                            ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
