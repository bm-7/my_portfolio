import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/CustomizedWidgets/customisedimagecon.dart';
import 'package:my_portfolio/CustomizedWidgets/hover.dart';

class MyWorks extends StatefulWidget {
  const MyWorks({Key? key}) : super(key: key);

  @override
  State<MyWorks> createState() => _MyWorksState();
}

class _MyWorksState extends State<MyWorks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    "My Latest Works",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white60,
                    ),
                  ),
                  const SizedBox(height: 30),
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: "Let's Explore My",
                        style: TextStyle(color: Colors.white, fontSize: 36),
                      ),
                      TextSpan(
                        text: " Projects",
                        style: TextStyle(color: Colors.blue, fontSize: 36),
                      )
                    ]),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 1400,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Discover my latest projects showcasing expertise in building impactful websites and apps From frontend frameworks to backend languages, explore the diverse range of my works.",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: BorderSide.strokeAlignCenter,
                          fontSize: 22,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.all(20.0),
                            //   child: Container(
                            //     height: 400,
                            //     width: 450,
                            //     decoration: BoxDecoration(
                            //       border: Border.all(
                            //         color: Colors.grey, // Border color
                            //       ),
                            //       borderRadius: BorderRadius.circular(15),
                            //       boxShadow: const [
                            //         BoxShadow(blurRadius: 1,spreadRadius: 4,offset: Offset(2, 1),color: Colors.blue)
                            //       ]
                            //     ),
                            //     child: Container(
                            //       decoration: BoxDecoration(
                            //         border: Border.all(
                            //           color: Colors.grey.shade100, // Same as container border color
                            //         ),
                            //         borderRadius: BorderRadius.circular(15),
                            //       ),
                            //       child: ClipRRect(
                            //         borderRadius: BorderRadius.circular(15),
                            //         child: Image.asset(
                            //           "Assets/Task_App.gif",
                            //           fit: BoxFit.fill
                            //           ,
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: CustomImageContainer(
                                  imagePath: 'Assets/Task_App.gif'),
                            ),
                            SizedBox(width: 50),
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: CustomImageContainer(
                                  imagePath: 'Assets/Task_App (1).gif'),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.all(20.0),
                            //   child: const CustomImageContainer( imagePath: 'Assets/Task_App (1).gif'),
                            // )
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: CustomImageContainer(
                                  imagePath: 'Assets/Task_App.gif'),
                            ),
                            SizedBox(width: 50),
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: CustomImageContainer(
                                  imagePath: 'Assets/Task_App (1).gif'),
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Text(
                                  "  Would you like to explore more?  >  ",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
