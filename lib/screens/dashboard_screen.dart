import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/tabs/bottom_nav_bar.dart';
import 'package:carbonccap/widgets/delete_button.dart';
import 'package:carbonccap/widgets/custom_appbar.dart';
import 'package:carbonccap/widgets/notification_icon.dart';
import 'package:carbonccap/screens/gpa_details.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var newgpa = [
      {
        "name": "Zohaib Hassan",
        "email": "zohaibhunzai121@gmail.com",
        "image": "assets/images/gpa1.png",
        "isVerified": true,
      },
      {
        "name": "Aliyan Faisal",
        "email": "aliyanfaisal15@gmail.com",
        "image": "assets/images/gpa2.png",
        "isVerified": false,
      },
    ];

    return Scaffold(
      appBar: CustomAppBar(
        leading: InkWell(
          onTap: () {},
          child: Row(
            children: const [
              CircleAvatar(
                backgroundImage:
                    AssetImage("assets/images/super admin icon.png"),
                radius: 18,
              ),
              SizedBox(width: 5),
              Text(
                "Admin",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        actions: [
          NotificationIcon("Notify_icon", () {}),
          Padding(padding: EdgeInsets.only(right: 0)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 10, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //summary section

          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Color(0xFFE0E0E0),
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                          ),
                          SvgPicture.asset(
                            "assets/icons/clipboard-list 1.svg",
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Registered GPA's",
                            style: TextStyle(
                                fontFamily: "poppins",
                                color: Color(0XFF474747),
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50, top: 5),
                        child: Text(
                          "20",
                          style: TextStyle(
                            color: Color(0xFF2E7758),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/icons/shield-trust 1.svg"),
                            SizedBox(width: 10),
                            Text(
                              "Approved GPA's",
                              style: TextStyle(
                                  color: Color(0XFF474747),
                                  fontFamily: "poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50, top: 5),
                        child: Text(
                          "08",
                          style: TextStyle(
                            color: Color(0xff52bf92),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 130,
                    height: 130,
                    child: SvgPicture.asset("assets/icons/Group.svg"),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 10),
            child: Text(
              "New Auditors",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: "poppins",
                  color: Color(0xFF474747)),
            ),
          ),
          Divider(
            color: Color(0xFFE0E0E0),
          ),

          // Adding ListView.builder for New Auditors
          Expanded(
            child: ListView.builder(
              itemCount: newgpa.length,
              itemBuilder: (context, index) {
                var gpa = newgpa[index];
                return InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GpaDetails())),
                  child: Card(
                    color: Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                          color: Color(0xFFE0E0E0),
                          width: 1,
                        )),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(gpa['image'] as String), // GPA image
                        radius: 25,
                      ),
                      title: Row(
                        children: [
                          Text(
                            gpa['name'] as String,
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "poppins",
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF474747)),
                          ),
                          SizedBox(width: 3),
                          Badge(
                              isVerified: (gpa["isVerified"] as bool?) ?? false)
                        ],
                      ),
                      subtitle: Text(
                        gpa['email'] as String,
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w500),
                      ),
                      trailing: Transform.translate(
                        offset: Offset(30, 0),
                        child: DeleteButton("img", () {}),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ]),
      ),
      // Use the imported BottomNavigationBar
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

// Badge Widget
class Badge extends StatelessWidget {
  final bool isVerified;

  const Badge({super.key, required this.isVerified});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      isVerified
          ? 'assets/icons/inactive badge.svg'
          : 'assets/icons/inactive badge.svg',
      height: 20,
      width: 20,
    );
  }
}
