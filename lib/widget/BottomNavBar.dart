import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonNavBar extends StatelessWidget {
  ButtonNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Color.fromRGBO(63, 81, 181, 100),
      unselectedItemColor: Colors.grey.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "home.svg",
              semanticsLabel: 'home',
              width: 32,
              height: 32,
            ),
            label: "홈"),
        BottomNavigationBarItem(
          icon: Image.network(
            "assets/cookie.png",
          ),
          label: "스터디 만들기",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "myPage.svg",
            semanticsLabel: 'home',
            width: 32,
            height: 32,
          ),
          label: "마이페이지",
        ),
      ],
    );
  }
}
