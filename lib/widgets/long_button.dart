import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final String btnName;
  final Widget? icn;
  final Color? bgcolor;
  
  final VoidCallback? callback;
  const LongButton(
      {super.key, required this.btnName,
      this.icn,
      this.bgcolor = const Color(0xFF52bf92),
      
      this.callback});
@override
Widget build(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      if (callback != null) callback!();
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: bgcolor,
      shadowColor: bgcolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icn != null) icn!,
        SizedBox(width: icn != null ? 8.0 : 0), // Add spacing if icon is present
        Text(
          btnName,
          style: TextStyle(color: Colors.white,fontFamily: "poppins",fontWeight: FontWeight.w500),
         
        ),
      ],
    ),
  );
}
}
