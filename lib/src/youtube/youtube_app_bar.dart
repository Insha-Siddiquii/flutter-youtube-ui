import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:render_ui/common/common.dart';
import 'package:render_ui/gen/assets.gen.dart';
import 'package:render_ui/styles/styles.dart';

class YoutubeAppBar extends StatelessWidget {
  const YoutubeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      shape: Border(
        bottom: BorderSide(color: Colors.white, width: 0.2),
      ),
      elevation: 2.0,
      leadingWidth: 100,
      backgroundColor: YoutubeColors.primary,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
        ),
        child: Assets.images.ytLogo.image(),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.cast),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.notifications_none_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: CircleAvatar(
            foregroundImage: NetworkImage(YoutubeConstants.circleAvatarProfile),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
