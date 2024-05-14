import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_portfolio/CustomizedWidgets/customisedimagecon.dart';
// import 'package:my_portfolio/CustomizedWidgets/hover.dart';

class MyWorks extends StatefulWidget {
  const MyWorks({Key? key}) : super(key: key);

  @override
  State<MyWorks> createState() => _MyWorksState();
}

bool changecolor = false;
bool changecolor1 = false;
bool changecolor2 = false;


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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 50,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: CustomImageContainer(
                                  imagePath: 'Assets/task1_app.gif'),
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            Column(
                              children: [
                                const Text(
                                  "Task_App",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 26),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    "Task App is a user-friendly mobile application developed using Sqflite,"),
                                const Text(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    "a local database solution. With this app, users can conveniently keep"),
                                const Text(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    "track of their daily tasks, events, and important reminders. Whether"),
                                const Text(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    "it's jotting down notes for upcoming events, setting reminders for"),
                                const Text(
                                  "tasks, or simply organizing daily to-dos, Task App provides a seamless",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                const Text(
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                  "and intuitive experience. ",
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                MouseRegion(
                                  onEnter: (_) {
                                    setState(() {
                                      changecolor = true;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      changecolor = false;
                                    });
                                  },
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      _launchUrl(
                                          'https://github.com/bm-7/task_app');
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: changecolor
                                          ? Colors.blue
                                          : Colors.black38,
                                      child: Icon(
                                        Icons.call_made_outlined,
                                        color: changecolor
                                            ? Colors.black54
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "Meal_app",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 26),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    "Task App is a user-friendly mobile application developed using Sqflite,"),
                                const Text(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    "a local database solution. With this app, users can conveniently keep"),
                                const Text(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    "track of their daily tasks, events, and important reminders. Whether"),
                                const Text(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    "it's jotting down notes for upcoming events, setting reminders for"),
                                const Text(
                                  "tasks, or simply organizing daily to-dos, Task App provides a seamless",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                const Text(
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                  "and intuitive experience. ",
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                MouseRegion(
                                  onEnter: (_) {
                                    setState(() {
                                      changecolor1 = true;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      changecolor1 = false;
                                    });
                                  },
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      _launchUrl(
                                          'https://github.com/bm-7/task_app');
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: changecolor1
                                          ? Colors.blue
                                          : Colors.black38,
                                      child: Icon(
                                        Icons.call_made_outlined,
                                        color: changecolor1
                                            ? Colors.black54
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: CustomImageContainer(
                                  imagePath: 'Assets/Meals_app.gif'),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 50,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: CustomImageContainer(
                                  imagePath: 'Assets/sate.gif'),
                            ),
                            const SizedBox(
                              width: 70,
                            ),
                            Column(
                              children: [
                                const Text(
                                  "Satellite Information App",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 26),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                const Text(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    "Task App is a user-friendly mobile application developed using Sqflite,"),
                                const Text(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    "a local database solution. With this app, users can conveniently keep"),
                                const Text(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    "track of their daily tasks, events, and important reminders. Whether"),
                                const Text(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                    "it's jotting down notes for upcoming events, setting reminders for"),
                                const Text(
                                  "tasks, or simply organizing daily to-dos, Task App provides a seamless",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                const Text(
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                  "and intuitive experience. ",
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                MouseRegion(
                                  onEnter: (_) {
                                    setState(() {
                                      changecolor2 = true;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      changecolor2 = false;
                                    });
                                  },
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      _launchUrl(
                                          'https://github.com/bm-7/task_app');
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: changecolor2
                                          ? Colors.blue
                                          : Colors.black38,
                                      child: Icon(
                                        Icons.call_made_outlined,
                                        color: changecolor
                                            ? Colors.black54
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            _launchUrl('https://github.com/bm-7');
                          },
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

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}
