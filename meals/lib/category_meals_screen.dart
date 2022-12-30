import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({super.key});

  // final String categoryId;
  // final String categoryTitle;

  // const CategoryMealsScreen(String id, String title, {super.key, required this.categoryId, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: const Text('The recipes for the category!'),
      ),
    );
  }
}
