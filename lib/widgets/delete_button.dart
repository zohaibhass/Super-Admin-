import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeleteButton extends StatelessWidget{

 final String img;
final VoidCallback? callback;

  const DeleteButton(this.img,this.callback, {super.key});

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextButton(onPressed: (){

      callback!();

    }, child: SvgPicture.asset("assets/icons/delete icon.svg"));
  }



}