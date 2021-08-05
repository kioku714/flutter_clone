import 'package:cracker_book/model/ImageButton.dart';
import 'package:cracker_book/widget/TopNavImageButton.dart';
import 'package:flutter/cupertino.dart';

class TopNavigationListView extends StatelessWidget {
  TopNavigationListView({Key key}) : super(key: key);

  final List<ImageButton> list = <ImageButton>[
    ImageButton('assets/chats.svg', '토론'),
    ImageButton('assets/microphone.svg', '발표'),
    ImageButton('assets/note.svg', '글쓰기'),
    ImageButton('assets/desktop.svg', '포트폴리오'),
    ImageButton('assets/etc.svg', '기타'),
  ];

  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: const EdgeInsets.all(15.0),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return TopNavImageButton(
            list: list,
            index: index,
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 30,
          );
        });
  }
}
