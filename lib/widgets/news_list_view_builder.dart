import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/models/articale_model.dart';
import 'package:news_cloud/services/news_services.dart';
import 'package:news_cloud/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});

  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  Future<List<ArticaleModel>>? future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getTopHeadlines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder <List<ArticaleModel>> (
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
                articles: snapshot.data!);

          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                child: Text('oops was an error, try later'),
              ),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 200),
                  child: CircularProgressIndicator(),
                ),
              ),
            );
          }

        });
  }
}
