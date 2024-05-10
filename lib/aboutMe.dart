import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:email_launcher/email_launcher.dart';
import 'dart:html' as html;
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

bool changecolor = false;

class _AboutMeState extends State<AboutMe> {
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
                  const Text(
                    "I'm Mohith B M, a mobile app developer, particularly in Flutter. I'm always looking to learn and improve. More than just coding, I believe in never giving up, a trait that fuels my passion for building innovative and user-friendly mobile experiences.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white60,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 400,
                    width: 700,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Container(
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.check,
                                      color: Colors.blue,
                                      size: 33,
                                    ),
                                    Text(
                                      " Application Developer",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 24),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Container(
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.check,
                                      color: Colors.blue,
                                      size: 33,
                                    ),
                                    Text(
                                      " Development & Design",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 24),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Container(
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.check,
                                      color: Colors.blue,
                                      size: 33,
                                    ),
                                    Text(
                                      " Web Development",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 24),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              Container(
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.check,
                                      color: Colors.blue,
                                      size: 33,
                                    ),
                                    Text(
                                      " Backend Development",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 24),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
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
                          child: Container(
                            width: 500,
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
                                  // onTap: () {
                                  //   EmailLauncher.launch(
                                  //       Email(to: ['buntmohith@gmail.com']));
                                  // },
                                  leading: CircleAvatar(
                                    backgroundColor: changecolor
                                        ? Colors.blue
                                        : Colors.black38,
                                    child: Icon(
                                      Icons.email_outlined,
                                      color: changecolor
                                          ? Colors.black54
                                          : Colors.white,
                                    ),
                                  ),
                                  title: const Text(
                                    "Email Me",
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                  subtitle: InkWell(
                                    hoverColor: Colors.grey,
                                    onTap: () {

                                      EmailLauncher.launch(

                                          Email(to: ['buntmohith@gmail.com'],
                                          body: 'your message',
                                          subject: 'your subject'));
                                    },
                                    child: const Text(
                                      "buntmohith@gmail.com",
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.white),
                                    ),
                                  ),
                                ),
                                ListTile(
                                  leading: CircleAvatar(
                                    child: Icon(
                                      Icons.call,
                                      color: changecolor
                                          ? Colors.black54
                                          : Colors.white,
                                    ),
                                    backgroundColor: changecolor
                                        ? Colors.blue
                                        : Colors.black38,
                                  ),
                                  title: const Text(
                                    "Make A Call",
                                    style: TextStyle(color: Colors.white60),
                                  ),
                                  subtitle: const Text(
                                    "+91 7259282655",
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
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
            const SizedBox(width: 20),
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
                          padding: const EdgeInsets.only(left: 90),
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
