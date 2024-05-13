import 'package:flutter/material.dart';

class CustomImageContainer extends StatelessWidget {

  final String imagePath;

  const CustomImageContainer({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, // Border color
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(blurRadius: 1,spreadRadius: 4,offset: Offset(2, 1),color: Colors.blue)
          ]
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade100, // Same as container border color
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            imagePath,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
