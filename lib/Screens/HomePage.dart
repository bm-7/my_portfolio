import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
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
  late Timer _timer;
  double _offset = 0.0;
  final double _scrollSpeed = 0.5;
  final bool _isVisible = true;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(milliseconds: 16), (timer) {
      setState(() {
        _offset -= _scrollSpeed;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      key: _scaffoldKey,
      endDrawer: const CustomDrawer(),
      body: AnimationConfiguration.synchronized(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: Responsive.isLaptopScreen(context)?4700:3750, // Limiting the height of the container
            child: Stack(
              children: [
                // Background image
                Positioned.fill(
                  child: Container(color: Colors.black87,)
                ),
                // GIF
                Positioned(
                  left: Responsive.isLaptopScreen(context)?-1:0,
                  top:  Responsive.isLaptopScreen(context)?-35:-10,
                  child: SizedBox(
                    width: Responsive.isLaptopScreen(context)?300:150,
                    height: Responsive.isLaptopScreen(context)?260:100,
                    child: Image.asset(
                      "Assets/111.gif",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  right: 4,
                  top: 4,

                  child: IconButton(
                    color: Colors.blue.shade400,
                    hoverColor: Colors.blueGrey.shade100,
                    onPressed: () {
                      _scaffoldKey.currentState?.openEndDrawer();
                    },
                    icon: const Icon(Icons.menu_open_outlined,),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 1000),
                  left:  Responsive.isLaptopScreen(context)?100:10,
                  top:  Responsive.isLaptopScreen(context)?180:100,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    width:  Responsive.isLaptopScreen(context)?1500:800,
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
                                      fontSize: Responsive.isLaptopScreen(context) ? 32 : 14,
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
                                      fontSize: Responsive.isLaptopScreen(context) ? 36 : 14,
                                      color: Color.fromARGB(255, 77, 193, 255),
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
                                      fontSize: Responsive.isLaptopScreen(context) ? 36 : 14,
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
                                duration: Duration(milliseconds: 300),
                                curve: Curves.linear,
                                child: Text(
                                  "Building Apps  |   Mohith, Flutter Dev",
                                  style: TextStyle(
                                    fontSize: Responsive.isLaptopScreen(context) ? 20 : 10,
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
                                  width:  Responsive.isLaptopScreen(context)?140:70,
                                  height:  Responsive.isLaptopScreen(context)?35:25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blue,
                                  ),
                                  child:  Center(
                                    child: Text(
                                      "Resume  >",
                                      style: TextStyle(
                                          fontSize:  Responsive.isLaptopScreen(context)?18:12, color: Colors.white70),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                         SizedBox(
                          width:  Responsive.isLaptopScreen(context)?260:5
                        ),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: Responsive.isLaptopScreen(context)?75:5 ),
                          child: FadeInAnimation(
                            duration: const Duration(milliseconds: 5000),
                            curve: Curves.linear,
                            child: SizedBox(
                              height:  Responsive.isLaptopScreen(context)?450:200,
                              width:  Responsive.isLaptopScreen(context)?450:200,
                              child: Stack(
                                children: [
                                   Positioned(
                                    bottom: 1,
                                    right: 1,
                                    child: SizedBox(
                                      height:  Responsive.isLaptopScreen(context)?450:200,
                                      width:  Responsive.isLaptopScreen(context)?450:200,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blue,
                                        radius:  Responsive.isLaptopScreen(context)?120:50,
                                      ),
                                    ),
                                  ),
                                   Center(
                                    child: CircleAvatar(
                                      radius:  Responsive.isLaptopScreen(context)?210:93,
                                      backgroundImage: AssetImage("Assets/mine.png"),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 1,
                                    child: Container(
                                      height:  Responsive.isLaptopScreen(context)?100:40,
                                      width:  Responsive.isLaptopScreen(context)?100:40,
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
                  top: Responsive.isLaptopScreen(context) ? 700 : 350,
                  left:  Responsive.isLaptopScreen(context)?100:10,
                  child: AnimationConfiguration.synchronized(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                      padding:  EdgeInsets.all( Responsive.isLaptopScreen(context)?20:5),
                      child: const AboutMe(),
                    ),
                  ),
                ),
                Positioned(
                  left:  Responsive.isLaptopScreen(context)?100:10,
                  top: Responsive.isLaptopScreen(context) ? 1450 : 760,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal:  Responsive.isLaptopScreen(context)?100:40),
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
                  left: Responsive.isLaptopScreen(context)?100:10,
                  top: Responsive.isLaptopScreen(context)?1850:1050,
                  child: MySkills(),
                ),
                 Positioned(
                   left: Responsive.isLaptopScreen(context)?100:10,
                  top: Responsive.isLaptopScreen(context)?2200:1230,
                  child: MyWorks(),
                ),
                 Positioned(
                   left: Responsive.isLaptopScreen(context)?100:10,
                  top: Responsive.isLaptopScreen(context)?3950:3100,
                  child: InfoContainer(),
                ),
                 Positioned(
                   left:Responsive.isLaptopScreen(context)?100:10,
                  top: Responsive.isLaptopScreen(context)?4630:3690,
                  right: 1,
                  child: SocialMedia(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget _buildBackgroundContent() {
  //   return SizedBox(
  //     height: 5000,
  //     child: ListView.builder(
  //       physics: const NeverScrollableScrollPhysics(),
  //       scrollDirection: Axis.horizontal,
  //       itemCount: 450,
  //       itemBuilder: (context, index) {
  //         return Container(
  //           width: 150,
  //           height: 5000,
  //           color: Colors.black,
  //           child: const VerticalDivider(
  //             color: Color.fromARGB(136, 90, 88, 88),
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }
}
