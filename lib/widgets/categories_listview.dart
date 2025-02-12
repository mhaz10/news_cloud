import 'package:flutter/material.dart';
import 'package:news_cloud/models/category_model.dart';
import 'package:news_cloud/widgets/category_card.dart';

class CategoriesListview extends StatelessWidget {
  const CategoriesListview({super.key});

  final List<CategoryModel> categories = const
  [
    CategoryModel(name: 'General', image: 'assets/images/general.jpg'),
    CategoryModel(name: 'Sports', image: 'assets/images/sports.jpg'),
    CategoryModel(name: 'Business', image: 'assets/images/business.jpg'),
    CategoryModel(name: 'Technology', image: 'assets/images/technology.jpg'),
    CategoryModel(name: 'Health', image: 'assets/images/health.jpg'),
    CategoryModel(name: 'Entertainment', image: 'assets/images/entertaiment.jpg'),
    CategoryModel(name: 'Science', image: 'assets/images/science.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryCard(category: categories[index]),
        itemCount: categories.length,
      ),
    );
  }
}
