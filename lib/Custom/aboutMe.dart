import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Responsive.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  void launchPhoneCall() async {
    const url = 'tel:+917259282655'; // Replace with your phone number
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  bool changecolor = false; // Moved inside the widget's state
  final bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          "About Me :",
          style: TextStyle(
            fontSize: Responsive.isLaptopScreen(context) ? 24 : 10,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
         SizedBox(height: Responsive.isLaptopScreen(context) ? 25 : 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  "Crafting excellence in Flutter development",
                  style: TextStyle(
                    fontSize: Responsive.isLaptopScreen(context) ? 26 : 10,
                    color: Color.fromARGB(255, 77, 193, 255),
                  ),
                ),
                 SizedBox(height: Responsive.isLaptopScreen(context) ?40: 10),
                Container(
                  width: Responsive.isLaptopScreen(context) ? 700 :200,
                  height: 220,
                  child:  Text(
                    "I'm Mohith B M, a mobile app developer, particularly in Flutter. I'm always looking to learn and improve. More than just coding, I believe in never giving up, a trait that fuels my passion for building innovative and user-friendly mobile experiences.",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: Responsive.isLaptopScreen(context) ? 20 : 9,
                      fontWeight: FontWeight.w400,
                      color: Colors.white54,
                    ),
                  ),
                ),
                 SizedBox(
                  height: Responsive.isLaptopScreen(context) ? 30 : 10,
                ),
                Container(
                  height: Responsive.isLaptopScreen(context) ? 400 : 150,
                  width: Responsive.isLaptopScreen(context) ? 800 : 200,
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
                          width: Responsive.isLaptopScreen(context) ? 600 : 600,
                          height: Responsive.isLaptopScreen(context) ? 200 : 130,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(Responsive.isLaptopScreen(context) ? 25 : 15),
                          ),
                          child: Column(
mainAxisAlignment: MainAxisAlignment.start
                            ,crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                onTap: launchGmail,
                                leading: CircleAvatar(
                                  radius: Responsive.isLaptopScreen(context) ? 22 : 14,
                                  backgroundColor:
                                  changecolor ? Colors.blue : Colors.black38,
                                  child: Icon(
                                    Icons.email_outlined,
                                    size: Responsive.isLaptopScreen(context) ? 20 : 12,
                                    color:
                                    changecolor ? Colors.black54 : Colors.white,
                                  ),
                                ),
                                title:  Text(
                                  "Email Me",
                                  style: TextStyle(color: Colors.white60,fontSize: Responsive.isLaptopScreen(context) ? 22 : 10,),
                                ),
                                subtitle:  Text(
                                  "buntmohith@gmail.com",
                                  style: TextStyle(fontSize: Responsive.isLaptopScreen(context) ? 22 : 10, color: Colors.white),
                                ),
                              ),
                              ListTile(
                                onTap: launchPhoneCall,
                                leading: CircleAvatar(
                                  radius:  Responsive.isLaptopScreen(context) ? 22 : 14,
                                  backgroundColor:
                                  changecolor ? Colors.blue : Colors.black38,
                                  child: Icon(
                                    Icons.call,
                                    size: Responsive.isLaptopScreen(context) ? 20 : 12,
                                    color:
                                    changecolor ? Colors.black54 : Colors.white,
                                  ),
                                ),
                                title:  Text(
                                  "Make A Call",
                                  style: TextStyle(color: Colors.white60,fontSize: Responsive.isLaptopScreen(context) ? 22 : 12,),
                                ),
                                subtitle:  Text(
                                  "+91 7259282655",
                                  style: TextStyle(fontSize: Responsive.isLaptopScreen(context) ? 22 : 12, color: Colors.white),
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
            FadeInAnimation(
                duration: const Duration(milliseconds: 3000),
                curve: Curves.linear,
                child: Container(
                  width:  Responsive.isLaptopScreen(context) ? 600 : 200,
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: Responsive.isLaptopScreen(context) ? 300 : 150,
                            height: Responsive.isLaptopScreen(context) ? 400 : 250,
                            color: Colors.amber,
                            child: const Image(
                              fit: BoxFit.cover,
                              image: AssetImage("Assets/3.jpg"),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: Responsive.isLaptopScreen(context) ? 200 : 160,
                        left: 0,
                        child: Container(
                          width: Responsive.isLaptopScreen(context) ? 260 : 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(Responsive.isLaptopScreen(context) ? 20 : 10),
                          ),
                          child:  Padding(
                            padding: EdgeInsets.all(Responsive.isLaptopScreen(context) ? 8 : 3),
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
                                    fontSize: Responsive.isLaptopScreen(context) ? 16 : 8,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(
                                  Icons.call_made_outlined,
                                  color: Colors.black,
                                  size: Responsive.isLaptopScreen(context) ? 30 : 15,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: Responsive.isLaptopScreen(context) ? 300 : 210,
                        left: Responsive.isLaptopScreen(context) ? 40 : 0,
                        child: Container(
                          width: Responsive.isLaptopScreen(context) ? 230 : 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(Responsive.isLaptopScreen(context) ? 20 : 10),
                          ),
                          child:  Padding(
                            padding: EdgeInsets.all(Responsive.isLaptopScreen(context) ? 8 : 3),
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
                                    fontSize: Responsive.isLaptopScreen(context) ? 16 : 8,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(
                                  Icons.call_made_outlined,
                                  color: Colors.black,
                                  size: Responsive.isLaptopScreen(context) ? 30 : 15,
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
