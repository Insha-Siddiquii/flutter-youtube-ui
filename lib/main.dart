import 'package:flutter/material.dart';
import 'package:render_ui/src/youtube/youtube.dart';
import 'package:render_ui/styles/styles.dart';
import 'package:render_ui/widgets/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: YoutubeColors.primary,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              YoutubeAppBar(),
              YoutubeTopics(),
              SliverCustomBox(
                value: 15.0,
              ),
              YoutubeBody(),
            ],
          ),
        ),
        bottomNavigationBar: YoutubeBottomTab(),
      ),
    );
  }
}
