// ignore_for_file: prefer_const_constructors_in_immutables, unused_element, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import "package:flutter/material.dart";
import "./components/categoryCardShort.dart";
import "./components/categoryCardLong.dart";

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
                    "Categories",
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
                    )),
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
                        "Categories",
                        style: TextStyle(
                            fontSize: adjustedSize(20),
                            fontWeight: FontWeight.bold,
                            fontFamily: "IndieFlower",
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: adjustedWidth(10),
                    ),
                    Container(
                        child: InkWell(
                      child: Text(
                        "People",
                        style: TextStyle(
                            fontSize: adjustedSize(16),
                            fontWeight: FontWeight.bold,
                            fontFamily: "IndieFlower",
                            color: Colors.grey.shade800),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/people");
                      },
                    )),
                  ],
                ),
              ),
              flex: 1),
          Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: adjustedWidth(10),
                      right: adjustedWidth(10),
                      top: adjustedHeight(40)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          CategoryCardShort(
                            color: Colors.red.shade100,
                            title: "Photogenic Monday",
                            icon: Icons.photo,
                            textColor: Colors.red.shade500,
                          ),
                          SizedBox(
                            height: adjustedHeight(30),
                          ),
                          CategoryCardShort(
                            color: Colors.purple.shade100,
                            title: "Artestic Wednesday",
                            icon: Icons.art_track,
                            textColor: Colors.purple.shade500,
                          ),
                          SizedBox(
                            height: adjustedHeight(30),
                          ),
                          CategoryCardShort(
                            color: Colors.blue.shade100,
                            title: "Others",
                            icon: Icons.miscellaneous_services,
                            textColor: Colors.blue.shade500,
                          ),
                          SizedBox(
                            height: adjustedHeight(30),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: adjustedWidth(30),
                      ),
                      Column(
                        children: [
                          CategoryCardLong(
                            color: Colors.pink.shade100,
                            title: "Poetic Tuesday",
                            icon: Icons.book,
                            textColor: Colors.pink.shade500,
                          ),
                          SizedBox(
                            height: adjustedHeight(30),
                          ),
                          CategoryCardLong(
                            color: Colors.green.shade100,
                            title: "Nanotales Friday",
                            icon: Icons.format_quote,
                            textColor: Colors.green.shade500,
                          ),
                          SizedBox(
                            height: adjustedHeight(30),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              flex: 10),
        ],
      ),
    )));
  }
}
