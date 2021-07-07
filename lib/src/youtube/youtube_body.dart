import 'package:flutter/material.dart';
import 'package:render_ui/common/common.dart';
import 'package:render_ui/styles/styles.dart';

class YoutubeBody extends StatelessWidget {
  const YoutubeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return YoutubeThumbnail(
            index: index,
          );
        },
        childCount: YoutubeConstants.thumbnails.length,
      ),
    );
  }
}

class YoutubeThumbnail extends StatelessWidget {
  YoutubeThumbnail({required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(
            YoutubeConstants.thumbnails[index],
          ),
          Container(
            color: YoutubeColors.primary,
            child: ListTile(
              minVerticalPadding: 12.0,
              trailing: IconButton(
                iconSize: 16.0,
                color: Colors.white,
                alignment: Alignment.topRight,
                padding: const EdgeInsets.all(0),
                icon: Icon(
                  Icons.more_vert_outlined,
                ),
                onPressed: () {},
              ),
              leading: CircleAvatar(
                foregroundColor: YoutubeColors.topicColorDark,
                foregroundImage: NetworkImage(
                  YoutubeConstants.thumbnailsAvatar[index],
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    YoutubeConstants.videoTitle[index],
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    YoutubeConstants.videoSubTitle[index],
                    style:
                        TextStyle(color: Colors.grey.shade600, fontSize: 13.0),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
        ],
      ),
    );
  }
}

class YoutubeTopics extends StatelessWidget {
  const YoutubeTopics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Material(
        elevation: 25.0,
        child: Container(
          height: 55,
          color: YoutubeColors.primary,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: YoutubeConstants.topic.length,
            itemBuilder: (context, index) => ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 25.0,
              ),
              child: Container(
                margin: const EdgeInsets.only(
                    left: 6.0, right: 6.0, top: 8.0, bottom: 8.0),
                decoration: BoxDecoration(
                  color:
                      index == 0 ? Colors.white : YoutubeColors.topicColorDark,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20.0),
                    right: Radius.circular(20.0),
                  ),
                  border: Border.all(
                    color: Colors.grey,
                    width: 0.08,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    top: 2.0,
                    bottom: 2.0,
                  ),
                  child: Center(
                    child: Text(
                      YoutubeConstants.topic[index],
                      style: TextStyle(
                          fontSize: 16.0,
                          color: index == 0 ? Colors.black : Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
