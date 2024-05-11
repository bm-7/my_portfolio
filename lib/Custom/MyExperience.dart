import 'package:flutter/material.dart';

class MyExperience extends StatefulWidget {
  const MyExperience({Key? key}) : super(key: key);

  @override
  State<MyExperience> createState() => _MyExperienceState();
}

class _MyExperienceState extends State<MyExperience> {
  bool changecolor = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: const CircleAvatar(
              backgroundImage: AssetImage("Assets/1.jpg"),
              radius: 180,
            ),
          ),
        ),
        SizedBox(
          width: 180,
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "My Experience",
                style: TextStyle(fontSize: 16, color: Colors.white60),
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: "Real Developing",
                    style: TextStyle(color: Colors.white, fontSize: 34),
                  ),
                  TextSpan(
                    text: " Experience",
                    style: TextStyle(color: Colors.blue, fontSize: 34),
                  )
                ]),
              ),
              SizedBox(
                height: 25,
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
                  height: 200,
                  width: 600,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor:changecolor ? Colors.blue : Colors.black12,
                          child: Icon(
                            Icons.call_made_outlined,
                            color:changecolor ? Colors.black54 :  Colors.grey[500],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 40),
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
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Flutter Developer Intern",
                                style: TextStyle(
                                  fontSize: 34,
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
                                  fontSize: 20,
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
