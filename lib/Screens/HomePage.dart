import 'dart:async';
import 'dart:html';

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
import '../Custom/aboutMe.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Timer _timer;
  double _offset = 0.0;
  final double _scrollSpeed = 0.5;
  bool _isVisible = true;

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
      key: _scaffoldKey, // Assign the scaffold key here
      endDrawer: CustomDrawer(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: AnimationConfiguration.synchronized(
          child: Stack(
            children: [
              Container(
                height: 3900,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Positioned(
                      left: _offset,
                      child: AnimatedContainer(
                        color: Colors.black,
                        duration: const Duration(milliseconds: 100),
                        width: MediaQuery.of(context).size.width * 2,
                        height: 3900,
                        child: _buildBackgroundContent(),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: -1,
                top: -35,
                child: Container(
                  width: 300,
                  height: 260,
                  child: Image.asset(
                    "Assets/111.gif",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                right: 1,
                top: 1,
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    _scaffoldKey.currentState?.openEndDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 1000),
                left: _isVisible ? 40 : -300,
                top: 180,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: _isVisible ? 1500 : 100,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AnimatedTextKit(
                            isRepeatingAnimation: false,
                            animatedTexts: [
                              TypewriterAnimatedText(
                                "Hello, I'm",
                                textStyle: const TextStyle(
                                    fontSize: 32, color: Colors.white54),
                                speed: const Duration(milliseconds: 200),
                              ),
                            ],
                          ),
                          AnimatedTextKit(
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  "Mohith B M",
                                  textStyle: const TextStyle(
                                      fontSize: 36,
                                      color: Color.fromARGB(255, 77, 193, 255)),
                                  speed: const Duration(milliseconds: 200),
                                )
                              ]),
                          AnimatedTextKit(
                              isRepeatingAnimation: false,
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  "Flutter Developer",
                                  textStyle: const TextStyle(
                                      fontSize: 36, color: Colors.white),
                                  speed: const Duration(milliseconds: 300),
                                ),
                              ]),
                          const FadeInAnimation(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.linear,
                            child: Text(
                              "Building Apps  |   Mohith, Flutter Dev",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white60),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          FadeInAnimation(
                            duration: const Duration(milliseconds: 3000),
                            curve: Curves.linear,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PdfViews(),
                                    ));
                              },
                              child: Container(
                                width: 140,
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blue),
                                child: const Center(
                                  child: Text(
                                    "Resume  >",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white70),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 500,
                      ),
                      Positioned(
                        right: 100,
                        top: 150,
                        child: FadeInAnimation(
                          duration: const Duration(milliseconds: 5000),
                          curve: Curves.linear,
                          child: Container(
                            height: 450,
                            width: 450,
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 1,
                                  right: 1,
                                  child: Container(
                                    height: 450,
                                    width: 450,
                                    child: const CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      radius: 120,
                                    ),
                                  ),
                                ),
                                const Center(
                                  child: CircleAvatar(
                                    radius: 210,
                                    backgroundImage: AssetImage("Assets/2.jpg"),
                                  ),
                                ),
                                Positioned(
                                  bottom: 1,
                                  child: Container(
                                    height: 100,
                                    width: 100,
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
                top: 700,
                left: 0, // Adjust the left position to align properly
                child: AnimationConfiguration.synchronized(
                  child: Container(
                    width: MediaQuery.of(context)
                        .size
                        .width, // Make the container full width
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(20),
                    child: const AboutMe(), // Use the AboutMe widget here
                  ),
                ),
              ),
              Positioned(
                top: 1450,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Container(
                    height: 400,
                    width: 1200,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(35)),
                    child: const MyExperience(),
                  ),
                ),
              ),
              const Positioned(
                top: 1900,
                child: MySkills(),
              ),
              const Positioned(
                top: 1900,
                child: MyWorks(),
              ),
              const Positioned(
                top: 3200,
                child: InfoContainer(),
              ),
              Positioned(
                top: 3850,
                right:1,
                child: SocialMedia()
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundContent() {
    return Row(
      children: List.generate(
        450,
        (index) => Row(
          children: [
            Container(
              width: 150,
              height: 3000,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
            Container(
              color: Colors.black,
              child: const VerticalDivider(
                color: Color.fromARGB(136, 90, 88, 88),
              ),
            )
          ],
        ),
      ),
    );
  }
}
