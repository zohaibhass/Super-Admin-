import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carbonccap/widgets/report_card.dart'; 
import 'package:carbonccap/widgets/custom_appbar.dart';
import 'package:carbonccap/tabs/bottom_nav_bar.dart';
import 'package:carbonccap/widgets/main_heading.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SvgPicture.asset("assets/icons/notification bell.svg"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainHeading(title: "Reports"),
            ReportCard(
              name: "Hasina Zehra",
              status: "Approved",
              projectType: "Tree Plantation",
              projectCode: "886754",
              imageUrl: "assets/images/report_user_1.png",
              isverified: "verified",
            ),
            ReportCard(
              name: "Sadaqat Hussain",
              status: "Revalidate",
              projectType: "Tree Plantation",
              projectCode: "886754",
              imageUrl: "assets/images/report_user2.png",
               isverified: "verified",
            ),
            ReportCard(
              name: "Hasina Zehra",
              status: "Approved",
              projectType: "Tree Plantation",
              projectCode: "886754",
              imageUrl: "assets/images/report_user_1.png",
               isverified: "verified",
            ),
            ReportCard(
              name: "Sadaqat Hussain",
              status: "Revalidate",
              projectType: "Tree Plantation",
              projectCode: "886754",
              imageUrl: "assets/images/report_user2.png",
               isverified: "verified",
            ),
            ReportCard(
              name: "Hasina Zehra",
              status: "Approved",
              projectType: "Tree Plantation",
              projectCode: "886754",
              imageUrl: "assets/images/report_user_1.png",
               isverified: "verified",
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
