import 'package:flutter/material.dart';
import 'package:klinik_shoes_project/module/homepage/controller/homepage_controller.dart';

class HomePageView extends StatelessWidget {
  final HomePageController controller = HomePageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAFBF9), // Background color
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            _buildTopSection(context),
            SizedBox(height: 20),
            _buildCategoriesSection(),
            SizedBox(height: 20),
            _buildPromotions(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  // Top section with user profile and location
  Widget _buildTopSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello,',
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            Text(
              controller.getUserName(), // Use the controller to get username
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Icon(Icons.location_on, size: 16, color: Colors.black54),
                SizedBox(width: 4),
                Text(
                  'Kos ku, Jl. Begawan, No 2',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            // Lockers and Notifications icons
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.redAccent),
              onPressed: () {
                // Notification action
              },
            ),
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('assets/profile_picture.png'),
            ),
          ],
        ),
      ],
    );
  }

  // Categories section with GridView
  Widget _buildCategoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                // See all action
              },
              child: Text('See all', style: TextStyle(color: Colors.black54)),
            ),
          ],
        ),
        SizedBox(height: 10),
        GridView.count(
          crossAxisCount: 4,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            _buildCategoryItem('Simple Cleaning', 'asset/Image1.png'),
            _buildCategoryItem('Deep Cleaning', 'asset/Image2.png'),
            _buildCategoryItem('Change Color', 'asset/Image3.png'),
            _buildCategoryItem('Leather Cleaning', 'asset/Image4.png'),
            _buildCategoryItem('Kids Shoes', 'asset/Image5.png'),
            _buildCategoryItem('Woman Shoes', 'asset/Image6.png'),
            _buildCategoryItem('Whitening', 'asset/Image7.png'),
            _buildCategoryItem('One Day Order', 'asset/Image8.png'),
          ],
        ),
      ],
    );
  }

  // Widget to create individual category item
  Widget _buildCategoryItem(String title, String assetPath) {
    return GestureDetector(
      onTap: () {
        controller.onCategorySelected(title); // Using controller to handle action
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Image.asset(
              assetPath,
              height: 40,
              width: 40,
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Colors.black),
          ),
        ],
      ),
    );
  }

  // Promotions slider
  Widget _buildPromotions() {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage('assets/promotion_banner.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // Bottom Navigation Bar
  Widget _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      onTap: (index) => controller.onBottomNavTap(context, index), // Controller handles navigation
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}