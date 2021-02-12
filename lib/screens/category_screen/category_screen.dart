import 'package:alemshop/screens/category_screen/components/category_grid_view.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  @override
  Widget build(BuildContext context) {
    return CategoryGridView();
  }
}
