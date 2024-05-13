import 'package:flutter/material.dart';

class ContainerBuilder {
  static Widget buildContainer({
    required bool hoverColorChange,
    required bool useFlutterLogo,
    required String text,
    required String? imagePath,
    required Function() onTap,
     double? height, // Added height parameter
     double ?width, // Added width parameter
    required double height2, // Added height parameter
    required double width2,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: hoverColorChange ? Colors.blue : Colors.grey.shade100,
            ),
            color: hoverColorChange ? Colors.grey.shade600 : Colors.grey.shade800,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                spreadRadius: 0.3,
                color: hoverColorChange ? Colors.blue : Colors.grey.shade400,
              ),
            ],
          ),
          height: height, // Use the provided height
          width: width, // Use the provided width
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              useFlutterLogo
                  ? FlutterLogo(size: 80)
                  : imagePath != null
                  ? Container(
                height: height2,
                width: width2,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: hoverColorChange ? Colors.blue : Colors.grey.shade100,
                  ),
                  color: hoverColorChange ? Colors.grey.shade600 : Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 0.3,
                      color: hoverColorChange ? Colors.blue : Colors.grey.shade400,
                    ),
                  ],
                ),
                child: Image.asset(imagePath,fit: BoxFit.fill,),
              )
                  : SizedBox(),

            ],
          ),
        ),
      ),
    );
  }
}
