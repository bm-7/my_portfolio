import 'package:flutter/material.dart';

import 'Responsive.dart';

class MyMobileSkills extends StatefulWidget {
  const MyMobileSkills({Key? key}) : super(key: key);

  @override
  State<MyMobileSkills> createState() => _MyMobileSkillsState();
}

class _MyMobileSkillsState extends State<MyMobileSkills> {
  bool changecolor1 = false;
  bool changecolor2 = false;
  bool changecolor3 = false;
  bool changecolor4 = false;
  bool changecolor5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: 700,
        width: 640,
        color: Colors.transparent,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:  5),
          child: Column(
            children: [
              Container(
                width: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "My Skills",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white60,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: "Let's Explore My",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        TextSpan(
                          text: " Popular Skills",
                          style: TextStyle(color: Colors.blue, fontSize: 14),
                        )
                      ]),
                    ),
                     SizedBox(
                      height: Responsive.isLaptopScreen(context)?20:5,
                    ),
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "My experience about building impactful websites and apps\n"
                            "with expertise in frontend frameworks and backend languages",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: BorderSide.strokeAlignCenter,
                          fontSize: Responsive.isLaptopScreen(context)?18:12,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: Responsive.isLaptopScreen(context)?900:500,
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            _buildContainer(
                              changecolor1,
                              true,
                              'Flutter',
                              '',
                                  () {
                                setState(() {
                                  changecolor1 = !changecolor1;
                                });
                              },
                            ),
                            _buildContainer(
                              changecolor2,
                              false,
                              'Firebase',
                              'Assets/firebase.png',
                                  () {
                                setState(() {
                                  changecolor2 = !changecolor2;
                                });
                              },
                            ),
                            _buildContainer(
                              changecolor3,
                              false,
                              'Figma',
                              'Assets/fig.png',
                                  () {
                                setState(() {
                                  changecolor3 = !changecolor3;
                                });
                              },

                            ),
                            _buildContainer(
                              changecolor4,
                              false,
                              'GitHub',
                              'Assets/github.png',
                                  () {
                                setState(() {
                                  changecolor4 = !changecolor4;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(bool hoverColorChange, bool useFlutterLogo,
      String text, String? imagePath, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: hoverColorChange ? Colors.blue :Colors.grey.shade100),
            color: hoverColorChange ? Colors.grey.shade600 : Colors.grey.shade800,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                spreadRadius: 0.3,
                color: hoverColorChange ? Colors.blue :Colors.grey.shade400,
              ),
            ],
          ),
          height: 200,
          width: 130,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              useFlutterLogo
                  ? FlutterLogo(size: 80)
                  : imagePath != null
                  ? Container(
                  height: 100,
                  width: 80,
                  child: Image.asset(imagePath))
                  : SizedBox(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: hoverColorChange ? Colors.blue : Colors.black12),
                  borderRadius: BorderRadius.circular(35),
                  color: hoverColorChange ? Colors.blue : Colors.black38,
                ),
                height: 40,
                width: 100,
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 20,
                        color:
                        hoverColorChange ? Colors.black : Colors.white70),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
