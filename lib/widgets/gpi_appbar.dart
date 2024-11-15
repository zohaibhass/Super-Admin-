// dynamic_appbar.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GpiAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String backgroundImage;
  final Widget? leading;
  final List<Widget>? actions;

  const GpiAppbar({
    super.key,
    this.title,
    required this.backgroundImage,
    this.leading,
    this.actions,
  });


 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(backgroundImage),
        AppBar(
leadingWidth: 200,

          leading: leading,
          actions: actions,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}
