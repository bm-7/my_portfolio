import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        color: Colors.black,
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
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Container(
                        width: 250,
                        height: 150,
                        child: Image.asset(
                          "Assets/111.gif",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Container(
                      child: EmailMe(),
                    ),
                    SizedBox(
                      width: 40,
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
