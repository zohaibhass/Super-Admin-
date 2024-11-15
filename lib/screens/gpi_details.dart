import 'package:flutter/material.dart';
import 'package:carbonccap/widgets/custom_appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carbonccap/widgets/main_heading.dart';
import 'package:carbonccap/widgets/notification_icon.dart';
import 'package:carbonccap/widgets/custom_back_button.dart';

class GpiDetails extends StatelessWidget {
  final Details = [
    {
      "icon": "assets/icons/verified_badge.svg",
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
      "icon": "assets/icons/number_icon.svg",
      "title": "Number of Audited Green Projects",
      "subtitle": "10",
    },
    {
      "icon": "assets/icons/location badge.svg",
      "title": "GPI Address",
      "subtitle": "Aliabad Hunza Gilgit Baltistan Pakistan",
    },
  ];

GpiDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomBackButton(
                back: SvgPicture.asset("assets/icons/back button.svg"),
                callback: () => Navigator.pop(context))
          ],
        ),
        actions: [
          NotificationIcon("assets/icons/notification bell.svg", () {})
        ],
      ),
      body: Column(
        children: [
          MainHeading(
            title: "GPI Details",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                width: 110,
                height: 110,
                child: Image.asset(
                  "assets/images/gpi_detail_image.png",
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: Details.length,
                itemBuilder: (context, index) {
                  var perDetailsData = Details[index];

                  return Column(
                    children: [
                      ListTile(
                        leading: SvgPicture.asset(
                            perDetailsData["icon"] as String),
                        title: Text(
                          perDetailsData["title"] as String,
                          style: TextStyle(
                              color: Color(0XFF474747),
                              fontFamily: "poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          perDetailsData["subtitle"] as String,
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
        ],
      ),
    );
  }
}
