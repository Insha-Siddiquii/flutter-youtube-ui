import 'package:flutter/material.dart';
import 'package:render_ui/styles/styles.dart';

class YoutubeBottomTab extends StatelessWidget {
  const YoutubeBottomTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      backgroundColor: YoutubeColors.primary,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 12.0,
      unselectedFontSize: 12.0,
      selectedIconTheme: IconThemeData(size: 25.0),
      unselectedIconTheme: IconThemeData(size: 25.0),
      currentIndex: 0,
      selectedLabelStyle: TextStyle(fontSize: 10.0),
      unselectedLabelStyle: TextStyle(fontSize: 10.0),
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: IconButton(
            constraints: BoxConstraints(),
            color: Colors.white,
            iconSize: 30,
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.home_filled,
            ),
            onPressed: () {},
          ),
        ),
        BottomNavigationBarItem(
          label: 'Explore',
          icon: IconButton(
            constraints: BoxConstraints(),
            iconSize: 30,
            padding: EdgeInsets.all(0),
            icon: Icon(Icons.explore_outlined),
            onPressed: () {},
          ),
        ),
        BottomNavigationBarItem(
          label: 'Add',
          icon: IconButton(
            constraints: BoxConstraints(),
            iconSize: 30,
            padding: EdgeInsets.all(0),
            icon: Icon(Icons.add_circle_outline_sharp),
            onPressed: () {},
          ),
        ),
        BottomNavigationBarItem(
          label: 'Subscriptions',
          icon: Stack(children: [
            IconButton(
              constraints: BoxConstraints(),
              iconSize: 30,
              padding: EdgeInsets.all(0),
              icon: Icon(Icons.subscriptions_outlined),
              onPressed: () {},
            ),
            new Positioned(
              top: 0,
              right: 1.8,
              child: Icon(Icons.brightness_1, size: 12.0, color: Colors.red),
            )
          ]),
        ),
        BottomNavigationBarItem(
          label: 'Library',
          icon: IconButton(
            constraints: BoxConstraints(),
            iconSize: 30,
            padding: EdgeInsets.all(0),
            icon: Icon(
              Icons.video_collection_outlined,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
