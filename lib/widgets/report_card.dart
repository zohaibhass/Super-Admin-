import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carbonccap/screens/reports_details.dart';

class ReportCard extends StatelessWidget {
  final String name;
  final String status;
  final String projectType;
  final String projectCode;
  final String imageUrl;
  final String isverified;

  const ReportCard({
    super.key,
    required this.name,
    required this.status,
    required this.projectType,
    required this.projectCode,
    required this.imageUrl,
    required this.isverified,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ReportsDetails())),
        child: Card(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Color(0xffE0E0E0),
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(imageUrl),
                        radius: 20,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                name,
                                style: TextStyle(
                                    fontFamily: "poppins",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset(isverified == "verified"
                                  ? "assets/icons/verrified badge.svg"
                                  : "assets/icons/inactive badge.svg"),
                            ],
                          ),
                          Text("GPA"),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Status",
                              style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 5),
                          SvgPicture.asset(
                            status == "Approved"
                                ? "assets/icons/approved_badge.svg"
                                : "assets/icons/incomplete_badge.svg",
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Project Type",
                              style: TextStyle(
                                  fontFamily: "poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          Text(projectType),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Project Code",
                              style: TextStyle(
                                  color: Color(0xff474747),
                                  fontFamily: "poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          Text(projectCode,
                              style: TextStyle(
                                  color: Color(0xff52bf92),
                                  fontFamily: "poppins",
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
