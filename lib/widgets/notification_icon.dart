import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationIcon extends StatelessWidget {
  final String Notify_icon;
  final VoidCallback callback;

  const NotificationIcon(this.Notify_icon, this.callback, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextButton(
        onPressed: () {},
        child: SvgPicture.asset("assets/icons/notification bell.svg"));
  }
}
