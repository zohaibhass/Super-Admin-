import 'package:flutter/material.dart';
import 'package:carbonccap/widgets/custom_appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carbonccap/tabs/bottom_nav_bar.dart';
import 'package:carbonccap/widgets/main_heading.dart';
import 'package:carbonccap/widgets/text_button.dart';
import 'package:carbonccap/widgets/delete_button.dart';
import 'package:carbonccap/widgets/notification_icon.dart';
import 'package:carbonccap/screens/gpi_details.dart';

class GpiManagement extends StatelessWidget {
  const GpiManagement({super.key});

  @override
  Widget build(BuildContext context) {
    var gpi = [
      {
        "name": "Shahzaib Khan",
        "email": "shahzaibkhan@gmail.com",
        "image": "assets/images/gpa2.png",
        "isverified": true,
      },
      {
        "name": "Zohaib Hassan",
        "email": "zohaibhassan@gmail.com",
        "image": "assets/images/gpa2.png",
        "isverified": true,
      },
      // Add more data here as needed...
    ];

    return DefaultTabController(
      length: 3, // Define the number of tabs
      child: Scaffold(
        appBar: CustomAppBar(
          actions: [
            NotificationIcon("Notify_icon", () {}),
            Padding(padding: EdgeInsets.only(right: 0)),
          ],
        ),
        body: Column(
          children: [
            MainHeading(title: "GPI Management"),
            TabBar(
              labelColor: Color(0xFF52bf92),
              unselectedLabelColor: Colors.grey,
              indicatorColor: Color(0xFF52bf92),
              indicatorWeight: 3.0,
              tabs: [
                Tab(child: TextBtn(btnname: "All")),
                Tab(child: TextBtn(btnname: "Verified")),
                Tab(child: TextBtn(btnname: "Unverified")),
              ],
            ),
            Divider(color: Color(0xFFB2B2B2), height: 1),
            Expanded(
              child: TabBarView(
                children: [
                  // Tab view for "All"
                  buildGpiList(gpi),
                  // Tab view for "Verified" (filtered data)
                  buildGpiList(
                      gpi.where((item) => item["isverified"] == true).toList()),
                  // Tab view for "Unverified" (filtered data)
                  buildGpiList(gpi
                      .where((item) => item["isverified"] == false)
                      .toList()),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }

  // Helper method to build the list
  Widget buildGpiList(List<Map<String, dynamic>> gpi) {
    return ListView.builder(
      itemCount: gpi.length,
      itemBuilder: (context, index) {
        var pergpi = gpi[index];
        return InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => GpiDetails())),
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(pergpi["image"] as String),
              ),
              title: Row(
                children: [
                  Text(
                    pergpi['name'] as String,
                    style: TextStyle(
                      color: Color(0xff474747),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 3),
                  Badge(isVerified: (pergpi["isverified"] as bool?) ?? false),
                ],
              ),
              subtitle: Text(
                pergpi["email"] as String,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff474747),
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Transform.translate(
                offset: Offset(20, 0),
                child: DeleteButton("img", () {}),
              ),
            ),
          ),
        );
      },
    );
  }
}

class Badge extends StatelessWidget {
  final bool isVerified;

  const Badge({super.key, required this.isVerified});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      isVerified
          ? "assets/icons/verrified badge.svg"
          : "assets/icons/inactive badge.svg",
    );
  }
}
