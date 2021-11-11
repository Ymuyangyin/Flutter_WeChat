import 'package:flutter/material.dart';
import 'package:flutter_weixin/Chat/chat_page.dart';
import 'package:flutter_weixin/Discovery/discovery_page.dart';
import 'package:flutter_weixin/Friends/friends_page.dart';
import 'package:flutter_weixin/Mine/mine_page.dart';


class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State <RootPage>{
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _vcList,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap:(index){
            setState(() {
              _currentIndex = index;
              _pageController.jumpToPage(_currentIndex);//切换
            });
          },
          selectedFontSize: 12.0,//选中字体
          type:BottomNavigationBarType.fixed ,//items>3时必须设置
          currentIndex: _currentIndex,
          items:_itemList,
      )
    );
  }
}

final List<Widget> _vcList = [ChatPage(),FriendsPage(),DiscoveryPage(),MinePage()];

final List<BottomNavigationBarItem> _itemList = [
   BottomNavigationBarItem(
       icon: Image.asset(
          'images/tabbar_chat.png',
          height: 20,
          width: 20,
      ),
      activeIcon: Image.asset(
        'images/tabbar_chat_hl.png',
        height: 20,
        width: 20,
    ),
      label: '微信'
  ),
   BottomNavigationBarItem(
       icon: Image.asset(
         'images/tabbar_friends.png',
         height: 20,
         width: 20,
       ),
       activeIcon: Image.asset(
         'images/tabbar_friends_hl.png',
         height: 20,
         width: 20,
       ),
       label: '通讯录'
  ),
   BottomNavigationBarItem(
      icon: Image.asset(
        'images/tabbar_discover.png',
        height: 20,
        width: 20,
      ),
      activeIcon: Image.asset(
        'images/tabbar_discover_hl.png',
        height: 20,
        width: 20,
      ),
      label: '发现'
  ),
   BottomNavigationBarItem(
      icon: Image.asset(
        'images/tabbar_mine.png',
        height: 20,
        width: 20,
      ),
      activeIcon: Image.asset(
        'images/tabbar_mine_hl.png',
        height: 20,
        width: 20,
      ),
      label: '我'
  ),
];
