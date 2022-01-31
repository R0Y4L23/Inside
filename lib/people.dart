// ignore_for_file: prefer_const_constructors_in_immutables, unused_element, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import "package:flutter/material.dart";

class People extends StatefulWidget {
  People({Key? key}) : super(key: key);

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
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

    return SafeArea(
        child: Scaffold(
            body: Container(
      height: dHeight,
      width: dWidth,
      child: Column(
        children: [
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bookmark_border),
                    color: Colors.black,
                  ),
                  Text(
                    "People",
                    style: TextStyle(
                        fontSize: adjustedSize(24),
                        fontWeight: FontWeight.bold,
                        fontFamily: "NanumGothic",
                        color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.login),
                    color: Colors.black,
                  ),
                ],
              ),
              flex: 1),
          Expanded(
              child: Container(
                width: adjustedWidth(320),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: InkWell(
                        child: Text(
                          "All News",
                          style: TextStyle(
                              fontSize: adjustedSize(16),
                              fontWeight: FontWeight.bold,
                              fontFamily: "IndieFlower",
                              color: Colors.grey.shade800),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/");
                        },
                      ),
                    ),
                    SizedBox(
                      width: adjustedWidth(10),
                    ),
                    Container(
                      child: InkWell(
                        child: Text(
                          "Categories",
                          style: TextStyle(
                              fontSize: adjustedSize(16),
                              fontWeight: FontWeight.bold,
                              fontFamily: "IndieFlower",
                              color: Colors.grey.shade800),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, "/categories");
                        },
                      ),
                    ),
                    SizedBox(
                      width: adjustedWidth(10),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                        color: Colors.grey.shade200,
                      ),
                      padding: EdgeInsets.all(adjustedSize(10)),
                      child: Text(
                        "People",
                        style: TextStyle(
                            fontSize: adjustedSize(20),
                            fontWeight: FontWeight.bold,
                            fontFamily: "IndieFlower",
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              flex: 1),
          Expanded(child: Container(), flex: 10),
        ],
      ),
    )));
  }
}
