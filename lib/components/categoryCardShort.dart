// ignore_for_file: prefer_const_constructors, file_names

import "package:flutter/material.dart";

class CategoryCardShort extends StatelessWidget {
  const CategoryCardShort(
      {Key? key,
      required this.icon,
      required this.color,
      required this.title,
      required this.textColor})
      : super(key: key);

  final IconData icon;
  final Color color;
  final Color textColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    double dWidth = MediaQuery.of(context).size.width;
    double dHeight = MediaQuery.of(context).size.height;
    adjustedWidth(double width) {
      return width * dWidth / 375;
    }

    adjustedHeight(double height) {
      return height * dHeight / 667;
    }

    adjustedSize(double size) {
      return (((size * dWidth) / 375) + ((size * dHeight) / 667)) / 2;
    }

    return Container(
        width: adjustedWidth(140),
        height: adjustedHeight(120),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: adjustedSize(40),
              color: textColor,
            ),
            SizedBox(height: adjustedHeight(20)),
            Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: adjustedSize(20),
                    fontWeight: FontWeight.bold,
                    fontFamily: "ShadowsIntoLight",
                    color: textColor),
              ),
            )
          ],
        ));
  }
}
