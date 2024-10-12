import 'package:flutter/material.dart';
import 'package:klinik_shoes_project/core.dart';
import 'package:klinik_shoes_project/module/cart_page/view/cart_page_view.dart';
import 'package:klinik_shoes_project/module/homepage/view/homepage_view.dart';
import 'package:klinik_shoes_project/module/history_page/view/history_page_view.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 3; // Default index for Profile

  // Method to handle item tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the respective pages based on index
    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePageView(controller: HomePageController())), // Navigate to Home
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CartPage()), // Navigate to Cart
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HistoryPage()), // Navigate to History
        );
        break;
      case 3:
        // You are already on Profile page, so no need to navigate
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with back button and cart
      appBar: AppBar(
        backgroundColor: Color(0xFF29D6C8),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate to Home when back button is pressed
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePageView(controller: HomePageController())), // Navigate to Home
            );
          },
        ),
        title: Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => CartPage()), // Navigate to Cart
              );
            },
          ),
        ],
      ),

      // Profile and options body
      body: Column(
        children: [
          // Profile picture and background section
          Container(
            color: Color(0xFF29D6C8),
            padding: EdgeInsets.only(top: 50, bottom: 60, right: 121.8, left: 121.5),
            child: Column(
              children: [
                // Circle Avatar with white background around profile picture
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 4), // White border around the avatar
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'asset/profile-picture.png', // Replace with your image
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // User name
                Text(
                  'Dimas Arief W.',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                // User email
                Text(
                  'Dummy@example.com',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          // List of profile options (centered horizontally)
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 20),
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16), // Margin from both sides
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20), // Padding ke bawah
                  child: Column(
                    children: [
                      // Edit Profile option
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 16), // Vertical padding for more height
                        leading: Icon(Icons.person_outline, color: Colors.teal),
                        title: Text('Edit User Profile'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Navigate to Edit User Profile
                        },
                      ),
                      Divider(height: 1, thickness: 1),

                      // Settings option
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 16), // Vertical padding for more height
                        leading: Icon(Icons.settings_outlined, color: Colors.teal),
                        title: Text('Settings'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Navigate to Settings
                        },
                      ),
                      Divider(height: 1, thickness: 1),

                      // Call Center option
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 16), // Vertical padding for more height
                        leading: Icon(Icons.phone_outlined, color: Colors.teal),
                        title: Text('Call Center'),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Call Center action
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar matching with other pages
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Set current index to the Profile tab
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped, // Use the method to handle taps
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('asset/home.png', width: 24, height: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('asset/cart-icon.png', width: 24, height: 24),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('asset/history-icon.png', width: 24, height: 24),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('asset/user-icon.png', width: 24, height: 24),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
