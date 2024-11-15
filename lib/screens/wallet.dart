import 'package:flutter/material.dart';
import 'package:carbonccap/widgets/gpi_appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carbonccap/widgets/custom_carousel.dart';
import 'package:carbonccap/tabs/gpi_bottom_navbar.dart';


class DashboardScreenGpi extends StatefulWidget {
  const DashboardScreenGpi({super.key});

  @override
  _DashboardScreenGpiState createState() => _DashboardScreenGpiState();
}

class _DashboardScreenGpiState extends State<DashboardScreenGpi>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;
  final List<String> imgList = [
    'assets/images/carouusel1.png',
    'assets/images/carousel2.png',
    'assets/images/carousel3.png',
  ];

   int _selectedIndex = 0;

  // Function to handle bottom nav bar taps
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();

    _animation1 = Tween<double>(begin: 0.0, end: 0.6).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _animation2 = Tween<double>(begin: 0.0, end: 0.8).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _animation3 = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GpiAppbar(
        backgroundImage: "",
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 8),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("assets/images/gpi_profile.png"),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hi, Zohaib Hassan",
                    style: TextStyle(
                        fontFamily: "poppins", fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  SvgPicture.asset("assets/icons/verified_gpi_badge.svg"),
                ],
              )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SvgPicture.asset("assets/icons/notification bell.svg"),
          )
        ],
      ),
      body:

          // First section

          Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          children: [
            const SizedBox(
              height: 19,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEDF5F6),
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border:
                        Border.all(color: const Color(0xFFDADADA), width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // First Progress Bar
                        Row(
                          children: [
                            const Text(
                              "Carbon Credits Available",
                              style: TextStyle(
                                color: Color(0xFF2E7758),
                                fontFamily: "poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(width: 9),
                            Expanded(
                              child: AnimatedBuilder(
                                animation: _animation2,
                                builder: (context, child) {
                                  return Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      // Background container with rounded corners
                                      Container(
                                        height: 30,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                          ),
                                          color: Color(
                                              0xffDADADA), // Background color
                                        ),
                                      ),
                                      // Progress overlay with rounded corners
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: FractionallySizedBox(
                                          widthFactor: _animation1
                                              .value, // Set width based on animation value
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            child: Container(
                                              height: 30,
                                              color: const Color(
                                                  0xFF2E7758), // Progress color
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Centered text
                                      const Positioned.fill(
                                        child: Center(
                                          child: Text(
                                            "15,000 (tons of CO2)",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),

                        // Second Progress Bar
                        Row(
                          children: [
                            const Text(
                              "Carbon Credits Sold",
                              style: TextStyle(
                                color: Color(0xFF2E7758),
                                fontFamily: "poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(width: 35),
                            Expanded(
                              child: AnimatedBuilder(
                                animation: _animation2,
                                builder: (context, child) {
                                  return Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      // Background container with rounded corners
                                      Container(
                                        height: 30,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                          ),
                                          color: Color(
                                              0xffDADADA), // Background color
                                        ),
                                      ),
                                      // Progress overlay with rounded corners
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: FractionallySizedBox(
                                          widthFactor: _animation2
                                              .value, // Set width based on animation value
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            child: Container(
                                              height: 30,
                                              color: const Color(
                                                  0xFF0E46A3), // Progress color
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Centered text
                                      const Positioned.fill(
                                        child: Center(
                                          child: Text(
                                            "15,000 (tons of CO2)",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 4),
                        // Third Progress Bar
                        Row(
                          children: [
                            const Text(
                              "Carbon Credits Earned",
                              style: TextStyle(
                                color: Color(0xFF2E7758),
                                fontFamily: "poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(width: 21),
                            Expanded(
                              child: AnimatedBuilder(
                                animation: _animation3,
                                builder: (context, child) {
                                  return Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      // Background container with rounded corners
                                      Container(
                                        height: 30,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(30),
                                            topRight: Radius.circular(30),
                                          ),
                                          color: Color(
                                              0xffDADADA), // Background color
                                        ),
                                      ),
                                      // Progress overlay with rounded corners
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: FractionallySizedBox(
                                          widthFactor: _animation3
                                              .value, // Set width based on animation value
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(30),
                                              topRight: Radius.circular(30),
                                            ),
                                            child: Container(
                                              height: 30,
                                              color: const Color(
                                                  0xFF52bf92), // Progress color
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Centered text
                                      const Positioned.fill(
                                        child: Center(
                                          child: Text(
                                            "15,000 (tons of CO2)",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Account Summary Card
                Positioned(
                  top: -15,
                  left: 8,
                  child: Container(
                    width: 120,
                    height: 33,
                    decoration: BoxDecoration(
                      color: const Color(0xFF071952), // Fill color
                      borderRadius: BorderRadius.circular(5), // Rounded corners
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(2, 2), // Shadow offset
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Account Summary",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontFamily: "poppins",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // second section starts form here
            SizedBox(height: 6),
            Container(
                height: 260,
                width: 335,
                decoration: BoxDecoration(
                    color: Color(0xFFEDF5F6),
                    border: Border.all(color: Color(0xffDADADA), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                    
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 160,
                          child: SvgPicture.asset(
                              "assets/icons/illustration image.svg"),
                        ),
                        Stack(
                         
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 55,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Color(0xFFDADADA),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                              ),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Text(
                                  "My Tree Pool",
                                  style: TextStyle(
                                    color: Color(0xFF2E7758),
                                    fontFamily: "poppins",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )),
                            ),
                            Positioned(
                              top: 27,
                              child: SizedBox(
                                height: 55,
                                width: 150,
                                child: Stack(
                                  children: [
                                    // SVG background
                                    Positioned.fill(
                                      child: Image.asset(
                                        'assets/images/egg shape.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    // Text in front of SVG background
                                    Center(
                                      child: Text(
                                        "10,000 Trees",
                                        style: TextStyle(
                                            color: Color(0xFF2E7758),
                                            fontFamily: "poppins",
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 22,
                            right: 65,
                            
                            
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                decoration: BoxDecoration(
                                  color: const Color(0xff2E7758),
                                  borderRadius: BorderRadius.circular(70),
                                ),
                                child: Center(
                                    child: SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: SvgPicture.asset(
                                            "assets/icons/plus copy.svg"))),
                              ),
                              Positioned(
                                left: 53,
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff52bf92),
                                    borderRadius: BorderRadius.circular(70),
                                  ),
                                  child: const Center(
                                    child: Text("Add Green Project",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "poppins",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        // Circular Progress Bar
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                            left: 15,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: const CircularProgressIndicator(
                                  value: 0.5,
                                  strokeWidth: 8,
                                  backgroundColor: Color(0xFFDADADA),
                                  valueColor:
                                      AlwaysStoppedAnimation(Color(0xFF52bf92)),
                                ),
                              ),
                              const Positioned.fill(
                                child: Center(
                                  child: Text(
                                    "50%",
                                    style: TextStyle(
                                      color: Color(0xFF52bf92),
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 15,
                          ),
                          child: Text(
                            "Project Completion",
                            style: TextStyle(
                                color: Color(0xff474747),
                                fontFamily: "poppins",
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

        // CustomCarousel(imgList: imgList), 
       
          ],
        ),
      ),

      bottomNavigationBar:BottomNavBar(currentIndex: -_selectedIndex, onTap: _onItemTapped) ,
      
    );
  }
}
