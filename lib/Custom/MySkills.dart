import 'package:flutter/material.dart';
import 'package:my_portfolio/Custom/Responsive.dart';

class MySkills extends StatefulWidget {
  const MySkills({Key? key}) : super(key: key);

  @override
  State<MySkills> createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills> {
  bool changecolor1 = false;
  bool changecolor2 = false;
  bool changecolor3 = false;
  bool changecolor4 = false;
  bool changecolor5 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isLaptopScreen(context) ? 400 : 250,
      width: Responsive.isLaptopScreen(context) ? 1600 : 600,
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isLaptopScreen(context) ? 40 : 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Responsive.isLaptopScreen(context) ? 600 : 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "My Skills",
                    style: TextStyle(
                      fontSize: Responsive.isLaptopScreen(context) ? 20 : 10,
                      color: Colors.white60,
                    ),
                  ),
                  SizedBox(
                    height: Responsive.isLaptopScreen(context) ? 30 : 10,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Let's Explore My",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                Responsive.isLaptopScreen(context) ? 34 : 14),
                      ),
                      TextSpan(
                        text: " Popular Skills",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize:
                                Responsive.isLaptopScreen(context) ? 34 : 14),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: Responsive.isLaptopScreen(context) ? 30 : 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                            Responsive.isLaptopScreen(context) ? 10 : 2),
                    child: Text(
                      "My experience about building impactful websites and apps with expertise in \n"
                      "frontend frameworks and backend languages",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0, // Corrected letterSpacing
                        fontSize: Responsive.isLaptopScreen(context) ? 18 : 10,
                        color: Colors.white60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: Responsive.isLaptopScreen(context) ? 700 : 300,
                width: Responsive.isLaptopScreen(context) ? 900 : 300,
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: Responsive.isLaptopScreen(context) ? 50 : 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flex(direction: Axis.vertical ,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(
                              Responsive.isLaptopScreen(context) ? 8 : 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                      ],)

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(bool hoverColorChange, bool useFlutterLogo,
      String text, String? imagePath, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Responsive.isLaptopScreen(context) ? 20 : 4),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: hoverColorChange ? Colors.blue : Colors.grey.shade100),
            color:
                hoverColorChange ? Colors.grey.shade600 : Colors.grey.shade800,
            borderRadius: BorderRadius.circular(Responsive.isLaptopScreen(context)?15:7),
            boxShadow: [
              BoxShadow(
                spreadRadius: 0.3,
                color: hoverColorChange ? Colors.blue : Colors.grey.shade400,
              ),
            ],
          ),
          height: Responsive.isLaptopScreen(context) ? 200 : 100,
          width: Responsive.isLaptopScreen(context) ? 130 : 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              useFlutterLogo
                  ? FlutterLogo(
                      size: Responsive.isLaptopScreen(context) ? 80 : 45)
                  : imagePath != null
                      ? Container(
                          height: Responsive.isLaptopScreen(context) ? 100 : 50,
                          width: Responsive.isLaptopScreen(context) ? 80 : 35,
                          child: Image.asset(imagePath))
                      : SizedBox(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: hoverColorChange ? Colors.blue : Colors.black12),
                  borderRadius: BorderRadius.circular(35),
                  color: hoverColorChange ? Colors.blue : Colors.black38,
                ),
                height: Responsive.isLaptopScreen(context) ? 40 : 25,
                width: Responsive.isLaptopScreen(context) ? 100 : 50,
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: Responsive.isLaptopScreen(context) ? 20 : 10,
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
