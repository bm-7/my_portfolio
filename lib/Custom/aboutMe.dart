import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
