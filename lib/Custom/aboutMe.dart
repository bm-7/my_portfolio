import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  bool changecolor = false; // Moved inside the widget's state

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "About Me :",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 25),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Crafting excellence in Flutter development",
                    style: TextStyle(
                      fontSize: 26,
                      color: Color.fromARGB(255, 77, 193, 255),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: 600,
                    height: 200,
                    child: const Text(
                      "I'm Mohith B M, a mobile app developer, particularly in Flutter. I'm always looking to learn and improve. More than just coding, I believe in never giving up, a trait that fuels my passion for building innovative and user-friendly mobile experiences.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white60,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 400,
                    width: 850,
                    child: Column(
                      children: [
                        // Rest of your content
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
                          child: Container(
                            width: 600,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade800,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ListTile(
                                  onTap: launchGmail,
                                  leading: CircleAvatar(
                                    backgroundColor:
                                    changecolor ? Colors.blue : Colors.black38,
                                    child: Icon(
                                      Icons.email_outlined,
                                      color:
                                      changecolor ? Colors.black54 : Colors.white,
                                    ),
                                  ),
                                  title: const Text(
                                    "Email Me",
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                  subtitle: const Text(
                                    "buntmohith@gmail.com",
                                    style: TextStyle(fontSize: 22, color: Colors.white),
                                  ),
                                ),
                                ListTile(
                                  leading: CircleAvatar(
                                    child: Icon(
                                      Icons.call,
                                      color:
                                      changecolor ? Colors.black54 : Colors.white,
                                    ),
                                    backgroundColor:
                                    changecolor ? Colors.blue : Colors.black38,
                                  ),
                                  title: const Text(
                                    "Make A Call",
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                  subtitle: const Text(
                                    "+91 7259282655",
                                    style: TextStyle(fontSize: 22, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            FadeInAnimation(
                duration: const Duration(milliseconds: 3000),
                curve: Curves.linear,
                child: Container(
                  width: 700,
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Container(
                            width: 300,
                            height: 400,
                            color: Colors.amber,
                            child: const Image(
                              fit: BoxFit.cover,
                              image: AssetImage("Assets/3.jpg"),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 200,
                        left: 50,
                        child: Container(
                          width: 260,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.developer_mode_outlined,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Application Developer",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(
                                  Icons.call_made_outlined,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 300,
                        left: 30,
                        child: Container(
                          width: 230,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.developer_mode_outlined,
                                  color: Colors.blue,
                                ),
                                Text(
                                  "Mohith B M",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(
                                  Icons.call_made_outlined,
                                  color: Colors.black,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ],
    );
  }
}



void launchGmail() async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'buntmohith@gmail.com',
  );

  if (await canLaunch(_emailLaunchUri.toString())) {
    await launch(_emailLaunchUri.toString());
  } else {
    throw 'Could not launch Gmail';
  }
}
