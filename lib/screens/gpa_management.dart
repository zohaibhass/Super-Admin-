
import 'package:carbonccap/tabs/bottom_nav_bar.dart';
import 'package:carbonccap/widgets/text_button.dart';
import 'package:flutter/material.dart';
import 'package:carbonccap/widgets/custom_appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carbonccap/widgets/main_heading.dart';
import 'package:carbonccap/widgets/delete_button.dart';
import 'package:carbonccap/widgets/notification_icon.dart';
import 'package:carbonccap/screens/gpa_details.dart';

class GpaManagement extends StatelessWidget {
  const GpaManagement({super.key});

  @override
  Widget build(BuildContext context) {
    var gpa = [
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
      {
        "name": "Aliyan Faisal",
        "email": "Aliyan Faisaln@gmail.com",
        "image": "assets/images/gpa1.png",
        "isverified": false,
      },
    ];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          actions: [
            NotificationIcon("Notify_icon", () {}),
            Padding(padding: EdgeInsets.only(right: 0)),
          ],
        ),
        body: Column(
          children: [
            MainHeading(
              title: "GPA Management",
            ),
            TabBar(
              unselectedLabelColor: Color(0xFFB2B2B2),
              indicatorColor: Color(0xff52bf92),
              indicatorWeight: 3.0,
              labelColor: Color(0XFF52BF92
              ),
              
              tabs: [ Tab(child: TextBtn(btnname: "ALL")),
                  Tab(child: TextBtn(btnname: "Applied")),
                  Tab(child: TextBtn(btnname: "Approved")),]
                 
                
            ),
            
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: gpa.length,
                  itemBuilder: (context, index) {
                    var pergpa = gpa[index];
                    return InkWell(
                      onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context) => GpaDetails(),)),
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(pergpa["image"] as String),
                          ),
                          title: Row(
                            children: [
                              Text(
                                pergpa['name'] as String,
                                style: TextStyle(
                                  color: Color(0xff474747),
                                  fontSize: 14,
                                  fontFamily: "poppins",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 3),
                              Badge(
                                isVerified:
                                    (pergpa["isverified"] as bool?) ?? false,
                              ),
                            ],
                          ),
                          subtitle: Text(
                            pergpa["email"] as String,
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff474747),
                              fontFamily: "poppins",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: Transform.translate(
                            offset: Offset(10, 0),
                            child: DeleteButton("img", () {}),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
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
