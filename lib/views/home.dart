import 'package:flutter/material.dart';
import 'package:news_cloud/widgets/categories_listview.dart';
import 'package:news_cloud/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News', style: TextStyle(color: Colors.black)),
            SizedBox(width:4),
            Text('Cloud', style: TextStyle(color: Colors.amber)),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoriesListview()),
            SliverToBoxAdapter(child: SizedBox(height: 30,)),
            NewsListViewBuilder(category: 'general',)
          ],
        ),
      ),
    );
  }
}
