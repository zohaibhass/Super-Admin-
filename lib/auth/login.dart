import 'package:flutter/material.dart';
import 'package:carbonccap/widgets/text_field.dart';
import 'package:carbonccap/widgets/long_button.dart';
import 'package:carbonccap/screens/dashboard_screen.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250.0), // Set the AppBar height
        child: AppBar(
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff52bf92), Color(0xff2E7758)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          "assets/images/super admdin circilar avatarr.png"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Welcome to Super Admin",
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Please Login to Continue",
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              TField(
                name: "Email *",
                htext: "Enter your Email",
              ),
              TField(
                name: "Password *",
                htext: "Enter your Password",
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                  width: 300,
                  child: LongButton(
                    btnName: "login",
                    callback: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashBoardScreen()));
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
