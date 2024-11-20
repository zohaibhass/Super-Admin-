import 'package:flutter/material.dart';

class TextBtn extends StatelessWidget {
  final String btnname;
  final VoidCallback? callback;

  const TextBtn({super.key, this.btnname = "untitled", this.callback});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextButton(
        onPressed: () {
          callback;
        },
        child: Text(
          btnname,
          style: TextStyle(
              color: Color(0xff474747),
              fontFamily: "poppins",
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ));
  }
}
