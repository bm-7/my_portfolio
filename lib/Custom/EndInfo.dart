import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Custom/Responsive.dart';
import 'package:my_portfolio/Custom/address.dart';
import 'package:my_portfolio/Custom/emailmessage.dart';

class InfoContainer extends StatefulWidget {
  const InfoContainer({super.key});

  @override
  State<InfoContainer> createState() => _InfoContainerState();
}

class _InfoContainerState extends State<InfoContainer> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Get in tounch",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: Responsive.isLaptopScreen(context)?24:10,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Responsive.isLaptopScreen(context)?Padding(
                padding:  EdgeInsets.symmetric(vertical: Responsive.isLaptopScreen(context)?20:5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Container(
                        width: Responsive.isLaptopScreen(context)?250:100,
                        height: Responsive.isLaptopScreen(context)?150:100,
                        child: Image.asset(
                          "Assets/111.gif",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Responsive.isLaptopScreen(context)?60:20,
                    ),
                    Container(
                      child: EmailMe(),
                    ),
                    SizedBox(
                      width: Responsive.isLaptopScreen(context)?70:20,
                    ),
                    Container(
                      child: Address(),
                    )
                  ],
                ),
              ):Padding(
                padding:  EdgeInsets.symmetric(vertical: Responsive.isLaptopScreen(context)?20:2),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Container(
                            width: Responsive.isLaptopScreen(context)?250:100,
                            height: Responsive.isLaptopScreen(context)?150:100,
                            child: Image.asset(
                              "Assets/111.gif",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Responsive.isLaptopScreen(context)?60:0,
                        ),
                        Container(
                          child: EmailMe(),
                        ),
                        SizedBox(
                          width: Responsive.isLaptopScreen(context)?70:20,
                        ),

                      ],
                    ),
                    Container(
                      child: Address(),
                    )
                  ],
                ),
              ),

            ],
          ),
        )
    );
  }
}
