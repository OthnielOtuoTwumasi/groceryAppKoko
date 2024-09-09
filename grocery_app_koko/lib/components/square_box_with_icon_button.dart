import 'package:flutter/material.dart';

import '../theme.dart';
class SquareBoxWIthIconButton extends StatelessWidget {
  final IconData iconData;
  final Function()? onPressed;
  const SquareBoxWIthIconButton({
    required this.iconData,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: Apptheme.paddingAllVerySmall,
        decoration: BoxDecoration(
          color: Apptheme.color3,
          borderRadius: BorderRadius.circular(
              Apptheme.borderRadiusSmall),
        ),
        child: IconButton(
            onPressed: onPressed,
            color: Apptheme.colorWhite,

            /// the particular filter no
            icon: const Icon(Icons.filter_list_alt)));
  }
}