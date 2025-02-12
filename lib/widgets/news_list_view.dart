import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

  final List articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 22),

              child: NewsTile(articleModel: articles[index]),
            );
          },
          childCount: articles.length,
        ));
  }
}
