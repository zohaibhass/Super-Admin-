import 'package:flutter/material.dart';
import 'package:carbonccap/widgets/custom_appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carbonccap/widgets/notification_icon.dart';
import 'package:carbonccap/widgets/custom_back_button.dart';
import 'package:carbonccap/widgets/main_heading.dart';
import 'package:carbonccap/widgets/text_button.dart';

class GpaDetails extends StatelessWidget {
  final personalDetails = [
    {
      "icon": "assets/icons/verification_badge.svg",
      "title": "Status",
      "subtitle": "Unverified",
    },
    {
      "icon": "assets/icons/name_badge.svg",
      "title": "Name",
      "subtitle": "Zohaib Hassan",
    },
    {
      "icon": "assets/icons/phone_badge.svg",
      "title": "Phone Number",
      "subtitle": "03495767873",
    },
    {
      "icon": "assets/icons/email_badge.svg",
      "title": "Email Address",
      "subtitle": "zohaibhunzai121@gmail.com",
    },
    {
      "icon": "assets/icons/location badge.svg",
      "title": "GPI Address",
      "subtitle": "Aliabad Hunza Gilgit Baltistan Pakistan",
    },
  ];

 GpaDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Row(
          children: [
            CustomBackButton(
              back: SvgPicture.asset("assets/icons/back button.svg"),
              callback: () => Navigator.pop(context),
            ),
          ],
        ),
        actions: [
          NotificationIcon("assets/icons/notification bell.svg", () {})
        ],
      ),
      body: Column(children: [
        MainHeading(
          title: "GPA Details",
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 20),
              width: 110,
              height: 110,
              child: Image.asset(
                "assets/images/gpa_details_image.png",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextBtn(
              btnname: "Personal Details",
              callback: () {},
            ),
            TextBtn(
              btnname: "Professional Details",
              callback: () {},
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 15, right: 65),
          child: const Divider(
            height: 10,
            color: Color(0xFFB2B2B2),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: personalDetails.length,
              itemBuilder: (context, index) {
                var perPersonalData = personalDetails[index];

                return Column(
                  children: [
                    ListTile(
                      leading:
                          SvgPicture.asset(perPersonalData["icon"] as String),
                      title: Text(
                        perPersonalData["title"] as String,
                        style: TextStyle(
                            color: Color(0XFF474747),
                            fontFamily: "poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        perPersonalData["subtitle"] as String,
                        style: TextStyle(
                            color: Color(0XFF474747),
                            fontFamily: "poppins",
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Divider(
                      color: Color(0xFFDADADA),
                      height: 1,
                    )
                  ],
                );
              }),
        )
      ]),
    );
  }
}
