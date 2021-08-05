import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Content extends StatelessWidget {
  Content({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 8,
                  child: Text(
                    "스터디: 눈치껏 못배웁니다, 일센스",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    "전체보기 >",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Card(
                color: Color.fromRGBO(15, 167, 106, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        "assets/greenBook.jpeg",
                        height: 200,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 30,
                right: 30,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          "bookLike.svg",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "14  ",
                          style: TextStyle(
                              color: Color.fromRGBO(119, 119, 119, 100)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
          Text("123"),
        ],
      ),
    );
  }
}
