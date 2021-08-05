import 'package:cracker_book/widget/TopNavListView.dart';
import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  Top({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: TopNavigationListView(),
    );
  }
}