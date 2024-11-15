import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final Widget? back;
  final VoidCallback? callback;

  const CustomBackButton({
    super.key,
    this.back,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: callback, child: back ?? Text("back"));
  }
}
