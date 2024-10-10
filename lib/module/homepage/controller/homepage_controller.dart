import 'package:flutter/material.dart';
import 'package:klinik_shoes_project/model/category/category_model.dart';

class HomePageController {
  // Sample data for categories
  final List<Category> categories = [
    Category(name: 'Simple Cleaning', iconPath: 'assets/simple_cleaning.png'),
    Category(name: 'Deep Cleaning', iconPath: 'assets/deep_cleaning.png'),
    Category(name: 'Change Color', iconPath: 'assets/change_color.png'),
    Category(name: 'Leather Cleaning', iconPath: 'assets/leather_cleaning.png'),
    Category(name: 'Kids Shoes', iconPath: 'assets/kids_shoes.png'),
    Category(name: 'Woman Shoes', iconPath: 'assets/woman_shoes.png'),
    Category(name: 'Whitening', iconPath: 'assets/whitening_treatment.png'),
    Category(name: 'One Day Order', iconPath: 'assets/one_day_order.png'),
  ];

  String getUserName() {
    return 'Dimas Arief W.'; // Return the username
  }

  void onCategorySelected(String categoryName) {
    // Handle category selection logic here
    print('Category selected: $categoryName');
  }

  void onBottomNavTap(BuildContext context, int index) {
    // Handle bottom navigation tap
    // You can add navigation logic here based on the index
    print('Bottom nav tapped: $index');
  }
}
