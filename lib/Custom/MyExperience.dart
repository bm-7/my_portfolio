import 'package:flutter/material.dart';

import 'Responsive.dart';

class MyExperience extends StatefulWidget {
  const MyExperience({Key? key}) : super(key: key);

  @override
  State<MyExperience> createState() => _MyExperienceState();
}

class _MyExperienceState extends State<MyExperience> {
  bool changecolor = false;
  final bool _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child:  CircleAvatar(
            backgroundImage: AssetImage("Assets/1.jpg"),
            radius: Responsive.isLaptopScreen(context) ? 180 : 50,
          ),
        ),
        SizedBox(
          width: Responsive.isLaptopScreen(context) ? 180 : 20,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "My Experience",
                style: TextStyle(fontSize: Responsive.isLaptopScreen(context) ? 16 : 12, color: Colors.white60),
              ),
               SizedBox(
                height: Responsive.isLaptopScreen(context) ? 30 : 20,
              ),
              RichText(
                text:  TextSpan(children: [
                  TextSpan(
                    text: "Real Developing",
                    style: TextStyle(color: Colors.white, fontSize: Responsive.isLaptopScreen(context) ? 34 : 15),
                  ),
                  TextSpan(
                    text: " Experience",
                    style: TextStyle(color: Colors.blue, fontSize: Responsive.isLaptopScreen(context) ? 34 : 15),
                  )
                ]),
              ),
              SizedBox(
                height: Responsive.isLaptopScreen(context) ? 25 : 20,
              ),
              InkWell(
                onTap: () {
                  // Your onTap logic here
                },
                onHover: (hover) {
                  setState(() {
                    changecolor = hover;
                  });
                },
                child: Container(
                  height: Responsive.isLaptopScreen(context) ? 200 : 120,
                  width: Responsive.isLaptopScreen(context) ? 600 : 280,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left: Responsive.isLaptopScreen(context) ? 30 : 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CircleAvatar(
                          radius: Responsive.isLaptopScreen(context) ? 25 : 15,
                          backgroundColor:changecolor ? Colors.blue : Colors.black12,
                          child: Icon(
                            Icons.call_made_outlined,
                            color:changecolor ? Colors.black54 :  Colors.grey[500],
                          ),
                        ),
                         Padding(
                          padding: EdgeInsets.only(left: Responsive.isLaptopScreen(context) ? 20 : 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "2024 - Present",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: Responsive.isLaptopScreen(context) ? 24 : 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Flutter Developer Intern",
                                style: TextStyle(
                                  fontSize: Responsive.isLaptopScreen(context) ? 34 : 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Bengaluru | India",
                                style: TextStyle(
                                  fontSize: Responsive.isLaptopScreen(context) ? 20 : 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white38,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
