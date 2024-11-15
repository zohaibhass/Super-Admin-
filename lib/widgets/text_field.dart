import 'package:flutter/material.dart';

class TField extends StatelessWidget {
  final String? name;
  final String? htext;
  final Widget? suffix;

  TField({
    Key? key,
    required this.name,
    this.htext,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              name ?? " ",
              style: TextStyle(
                  color: Color(0xff474747),
                  fontFamily: "poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                     
                      hintText: htext ?? " ",
                      hintStyle: TextStyle(
                          color: Color(0xffDADADA),
                          fontFamily: "poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Color(0XFF52BF92)),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffDADADA)),
                          borderRadius: BorderRadius.circular(30))),
                )),
          )
        ],
      ),
    );
  }
}
