import 'package:flutter/material.dart';
import 'package:my_portfolio/Custom/Responsive.dart';

class CustomImageContainer extends StatelessWidget {

  final String imagePath;

  const CustomImageContainer({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isLaptopScreen(context)?400:200,
      width:  Responsive.isLaptopScreen(context)?400:200,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, // Border color
          ),
          borderRadius: BorderRadius.circular( Responsive.isLaptopScreen(context)?15:10),
          boxShadow:  [
            BoxShadow(blurRadius: 1,spreadRadius:  Responsive.isLaptopScreen(context)?4:2,offset: Offset(2, 1),color: Colors.blue)
          ]
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade100, // Same as container border color
          ),
          borderRadius: BorderRadius.circular( Responsive.isLaptopScreen(context)?15:10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular( Responsive.isLaptopScreen(context)?15:10),
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
