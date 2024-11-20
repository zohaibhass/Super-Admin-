import 'package:flutter/material.dart';
import 'package:carbonccap/widgets/custom_appbar.dart';
import 'package:carbonccap/widgets/custom_back_button.dart';
import 'package:carbonccap/widgets/notification_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReportsDetails extends StatelessWidget {
  const ReportsDetails({super.key});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CustomAppBar(
        leading: Row(
           mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomBackButton(back: SvgPicture.asset("assets/icons/back button.svg"),callback: () => Navigator.pop(context),),
          ],
        ),
        actions: [NotificationIcon( "Notify_icon", (){})],
      ) ,
    );
  }
}