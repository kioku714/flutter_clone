import 'package:cracker_book/model/ImageButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopNavImageButton extends StatelessWidget {
  TopNavImageButton({Key key, this.list, this.index}) : super(key: key);

  final List<ImageButton> list;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(23.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: SvgPicture.asset(
            list[index].src,
            semanticsLabel: 'chats',
            width: 40,
            height: 40,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          list[index].name,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}