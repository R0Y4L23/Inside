// ignore_for_file: prefer_const_constructors_in_immutables, file_names, unused_element, prefer_const_constructors, no_logic_in_create_state

import "package:flutter/material.dart";

class NewsCard extends StatefulWidget {
  NewsCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.time})
      : super(key: key);

  final String title;
  final String description;
  final String imageUrl;
  final String time;

  @override
  State<NewsCard> createState() => _NewsCardState(
      title: title, description: description, imageUrl: imageUrl, time: time);
}

class _NewsCardState extends State<NewsCard> {
  _NewsCardState(
      {Key? key,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.time});

  final String title;
  final String description;
  final String imageUrl;
  final String time;

  bool isReadMore = false;

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
      margin: EdgeInsets.all(adjustedSize(20)),
      padding: EdgeInsets.all(adjustedSize(15)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.grey.shade200,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.calendar_today),
                  SizedBox(
                    width: adjustedWidth(10),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                        fontSize: adjustedSize(12),
                        fontWeight: FontWeight.bold,
                        fontFamily: "NanumGothic",
                        color: Colors.grey.shade800),
                  ),
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline))
            ],
          ),
          Image(
            image: AssetImage(imageUrl),
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: adjustedHeight(10),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: adjustedSize(20),
                fontWeight: FontWeight.bold,
                fontFamily: "IndieFlower",
                color: Colors.black),
          ),
          SizedBox(
            height: adjustedHeight(5),
          ),
          InkWell(
            child: Text(
              isReadMore ? description : "Read More...",
              style: TextStyle(
                  fontSize: adjustedSize(12), color: Colors.grey.shade800),
            ),
            onTap: () {
              setState(() {
                isReadMore = !isReadMore;
              });
            },
          ),
        ],
      ),
    );
  }
}
