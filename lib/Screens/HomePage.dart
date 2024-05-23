import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:my_portfolio/Custom/Custom_Drawer.dart';
import 'package:my_portfolio/Custom/EndInfo.dart';
import 'package:my_portfolio/Custom/MyExperience.dart';
import 'package:my_portfolio/Custom/MySkills.dart';
import 'package:my_portfolio/Custom/SMedia_Links.dart';
import 'package:my_portfolio/Custom/myWorks.dart';
import 'package:my_portfolio/CustomizedWidgets/Pdf_Viewer.dart';
import '../Custom/Responsive.dart';
import '../Custom/aboutMe.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey contactsrl = GlobalKey();
  final GlobalKey aboutmesrl = GlobalKey();
  final GlobalKey skillssrl = GlobalKey();
  final GlobalKey expsrl = GlobalKey();
  final GlobalKey worksrl = GlobalKey();

  void Scrollabtme() {
    Scrollable.ensureVisible(aboutmesrl.currentContext!,
        duration: Duration(seconds: 2), curve: Curves.easeInOut);
  }

  void Scrollcont() {
    Scrollable.ensureVisible(contactsrl.currentContext!,
        duration: Duration(seconds: 2), curve: Curves.easeInOut);
  }

  void Scrollskill() {
    Scrollable.ensureVisible(skillssrl.currentContext!,
        duration: Duration(seconds: 2), curve: Curves.easeInOut);
  }

  void Scrollexp() {
    Scrollable.ensureVisible(expsrl.currentContext!,
        duration: Duration(seconds: 2), curve: Curves.easeInOut);
  }

  void Scrollwork() {
    Scrollable.ensureVisible(worksrl.currentContext!,
        duration: Duration(seconds: 2), curve: Curves.easeInOut);
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final Screenwidth = MediaQuery.of(context).size.width;
    final Screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.black,
          actions: [
            Container(
              height: 30,
              width: Responsive.isLaptopScreen(context) ? 500 : 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: Scrollabtme,
                    child: Text(
                      "About Me",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Responsive.isLaptopScreen(context) ? 14 : 8),
                    ),
                  ),
                  InkWell(
                    onTap: Scrollexp,
                    child: Text(
                      "My Experience",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Responsive.isLaptopScreen(context) ? 14 : 8),
                    ),
                  ),
                  InkWell(
                    onTap: Scrollskill,
                    child: Text(
                      "My Skills",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Responsive.isLaptopScreen(context) ? 14 : 8),
                    ),
                  ),
                  InkWell(
                    onTap: Scrollwork,
                    child: Text(
                      "My Works",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Responsive.isLaptopScreen(context) ? 14 : 8),
                    ),
                  ),
                  InkWell(
                    onTap: Scrollcont,
                    child: Text(
                      "Contact",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Responsive.isLaptopScreen(context) ? 14 : 8),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 120,)
,            IconButton(
              color: Colors.blue.shade400,
              hoverColor: Colors.blueGrey.shade100,
              onPressed: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
              icon: const Icon(
                Icons.menu_open_outlined,
              ),
            ),
          ],
          // leading: Padding(
          //   padding: const EdgeInsets.all(4.0), // Add padding to position the GIF correctly
          //   child: SizedBox(
          //     width: Responsive.isLaptopScreen(context) ? 100 : 50, // Increase the size of the GIF
          //     height: Responsive.isLaptopScreen(context) ? 100 : 50, // Increase the size of the GIF
          //     child: Image.asset(
          //       "Assets/nodejs.png",
          //       fit: BoxFit.fill,
          //     ),
          //   ),
          // ),
        ),
      ),

      backgroundColor: Colors.black,
      key: _scaffoldKey,
      endDrawer: const CustomDrawer(),
      body: AnimationConfiguration.synchronized(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: Responsive.isLaptopScreen(context) ? 4700 : 3340,
                child: Stack(
                  children: [
                    // Background image
                    Positioned.fill(
                      child: Container(
                        color: Colors.black87,
                      ),
                    ),
                    // GIF
                    Positioned(
                      left: Responsive.isLaptopScreen(context) ? -1 : 0,
                      top: Responsive.isLaptopScreen(context) ? -35 : -10,
                      child: SizedBox(
                        width: Responsive.isLaptopScreen(context) ? 300 : 150,
                        height: Responsive.isLaptopScreen(context) ? 260 : 100,
                        child: Image.asset(
                          "Assets/111.gif",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 1000),
                      left: Responsive.isLaptopScreen(context) ? 50 : 10,
                      top: Responsive.isLaptopScreen(context) ? 165 : 100,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        width: Screenwidth / 1,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: false,
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                        "Hello, I'm",
                                        textStyle: TextStyle(
                                          fontSize:
                                          Responsive.isLaptopScreen(context)
                                              ? 32
                                              : 14,
                                          color: Colors.white54,
                                        ),
                                        speed: const Duration(milliseconds: 200),
                                      ),
                                    ],
                                  ),
                                ),
                                FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: false,
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                        "Mohith B M",
                                        textStyle: TextStyle(
                                          fontSize:
                                          Responsive.isLaptopScreen(context)
                                              ? 36
                                              : 14,
                                          color: const Color.fromARGB(
                                              255, 77, 193, 255),
                                        ),
                                        speed: const Duration(milliseconds: 200),
                                      ),
                                    ],
                                  ),
                                ),
                                FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: AnimatedTextKit(
                                    isRepeatingAnimation: false,
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                        "Flutter Developer",
                                        textStyle: TextStyle(
                                          fontSize:
                                          Responsive.isLaptopScreen(context)
                                              ? 36
                                              : 14,
                                          color: Colors.white,
                                        ),
                                        speed: const Duration(milliseconds: 300),
                                      ),
                                    ],
                                  ),
                                ),
                                FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: FadeInAnimation(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.linear,
                                    child: Text(
                                      "Building Apps  |   Mohith, Flutter Dev",
                                      style: TextStyle(
                                        fontSize: Responsive.isLaptopScreen(context)
                                            ? 20
                                            : 10,
                                        color: Colors.white60,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: Responsive.isLaptopScreen(context) ? 50 : 20,
                                ),
                                FadeInAnimation(
                                  duration: const Duration(milliseconds: 3000),
                                  curve: Curves.linear,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const PdfViews(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: Responsive.isLaptopScreen(context)
                                          ? 140
                                          : 70,
                                      height: Responsive.isLaptopScreen(context)
                                          ? 35
                                          : 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.blue,
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Resume  >",
                                          style: TextStyle(
                                              fontSize: Responsive.isLaptopScreen(context)
                                                  ? 18
                                                  : 12,
                                              color: Colors.white70),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: Responsive.isLaptopScreen(context) ? 260 : 20),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: Responsive.isLaptopScreen(context) ? 75 : 5),
                              child: FadeInAnimation(
                                duration: const Duration(milliseconds: 5000),
                                curve: Curves.linear,
                                child: SizedBox(
                                  height: Responsive.isLaptopScreen(context) ? 450 : 200,
                                  width: Responsive.isLaptopScreen(context) ? 450 : 200,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        bottom: 1,
                                        right: 1,
                                        child: SizedBox(
                                          height: Responsive.isLaptopScreen(context) ? 450 : 200,
                                          width: Responsive.isLaptopScreen(context) ? 450 : 200,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.blue,
                                            radius: Responsive.isLaptopScreen(context) ? 120 : 50,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: CircleAvatar(
                                          radius: Responsive.isLaptopScreen(context) ? 210 : 93,
                                          backgroundImage: const AssetImage("Assets/mine.png"),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 1,
                                        child: Container(
                                          height: Responsive.isLaptopScreen(context) ? 100 : 40,
                                          width: Responsive.isLaptopScreen(context) ? 100 : 40,
                                          decoration: const FlutterLogoDecoration(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      key: aboutmesrl,
                      top: Responsive.isLaptopScreen(context) ? 700 : 350,
                      left: Responsive.isLaptopScreen(context) ? 50 : 10,
                      child: AnimationConfiguration.synchronized(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.transparent,
                          padding: EdgeInsets.all(Responsive.isLaptopScreen(context) ? 20 : 5),
                          child: const AboutMe(),
                        ),
                      ),
                    ),
                    Positioned(
                      key: expsrl,
                      left: Responsive.isLaptopScreen(context) ? 50 : 10,
                      top: Responsive.isLaptopScreen(context) ? 1450 : 745,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: Responsive.isLaptopScreen(context) ? 100 : 40),
                        child: Container(
                          height: Responsive.isLaptopScreen(context) ? 400 : 400,
                          width: Responsive.isLaptopScreen(context) ? 1200 : 640,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(Responsive.isLaptopScreen(context) ? 35 : 20),
                          ),
                          child: const MyExperience(),
                        ),
                      ),
                    ),
                    Positioned(
                      key: skillssrl,
                      left: Responsive.isLaptopScreen(context) ? 50 : 10,
                      top: Responsive.isLaptopScreen(context) ? 1850 : 1060,
                      child: const MySkills(),
                    ),
                    Positioned(
                      key: worksrl,
                      left: Responsive.isLaptopScreen(context) ? 50 : 10,
                      top: Responsive.isLaptopScreen(context) ? 2200 : 1260,
                      child: const MyWorks(),
                    ),
                    Positioned(
                      key: contactsrl,
                      left: Responsive.isLaptopScreen(context) ? 50 : 10,
                      top: Responsive.isLaptopScreen(context) ? 3950 : 2620,
                      child: const InfoContainer(),
                    ),
                    Positioned(
                      left: Responsive.isLaptopScreen(context) ? 50 : 10,
                      top: Responsive.isLaptopScreen(context) ? 4630 : 3300,
                      right: 1,
                      child: const SocialMedia(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
