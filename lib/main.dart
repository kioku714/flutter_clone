import 'package:cracker_book/container/Content.dart';
import 'package:cracker_book/container/Top.dart';
import 'package:cracker_book/widget/BottomNavBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'model/Study.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cracker Book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Cracker Book'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Study> list = [
    Study("profile2.svg", "데이지", "토론", "3/6", "사회초년생을 위한 직팁",
        "2021.05.21 ~ 05.29", "14:00", "6"),
    Study("profileGreen.svg", "아자", "토론", "4/6", "'일센스'가 있는 사람이 되기 위",
        "2021.05.21 ~ 05.29", "14:00", "6"),
  ];

  @override
  Widget build(BuildContext context) {
    final tiles = list.map(
      (Study study) {
        return ListTile(
          leading: SvgPicture.asset(study.profileImage),
          title: Text(
            study.title,
          ),
          subtitle: Text("test"),
          trailing: Text("\$" + study.likeCount),
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Top(),
            Content(),
          ],
        ),
      ),
      bottomNavigationBar: ButtonNavBar(),
    );
  }
}
