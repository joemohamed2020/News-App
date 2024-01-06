import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/category_widget.dart';

class CategoryListView extends StatelessWidget {
   CategoryListView({super.key});
  List<CategoryModel> categories = [
    CategoryModel(name: "Business", photo: "assets/business.jpg"),
    CategoryModel(name: "Entertainment", photo: "assets/entertainment.jpg"),
    CategoryModel(name: "World", photo: "assets/general.jpg"),
    CategoryModel(name: "health", photo: "assets/health.jpg"),
    CategoryModel(name: "science", photo: "assets/science.jpg"),
    CategoryModel(name: "sports", photo: "assets/sports.jpg"),
    CategoryModel(name: "technology", photo: "assets/technology.jpg")
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryWidget(categoryModel: categories[index]);
        },
      ),
    );
  }
}
