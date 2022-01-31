// ignore_for_file: file_names, unused_element

import "package:flutter/material.dart";

class PeopleCard extends StatelessWidget {
  const PeopleCard({Key? key}) : super(key: key);

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

    return Container();
  }
}
