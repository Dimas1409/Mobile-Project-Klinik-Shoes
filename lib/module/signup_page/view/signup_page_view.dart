import 'package:flutter/material.dart';
import '../controller/signup_page_controller.dart';


class SignupPageView extends StatelessWidget {
  final SignupPageController controller;

  SignupPageView({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Background gradient and decorative circles
          _buildBackground(),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Displaying the logo in the center with a larger size
                  Container(
                    width: 300, // Size of the logo
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/logo_klinik_shoes.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  _buildTextField(
                    hintText: 'Username or Email',
                    iconPath: 'asset/user.png',
                    onChanged: (value) => controller.setUsername(value),
                  ),
                  SizedBox(height: 16),
                  _buildTextField(
                    hintText: 'Password',
                    iconPath: 'asset/lock1.png',
                    obscureText: true,
                    onChanged: (value) => controller.setPassword(value),
                  ),
                  SizedBox(height: 16),
                  _buildTextField(
                    hintText: 'Confirm Password',
                    iconPath: 'asset/lock1.png',
                    obscureText: true,
                    onChanged: (value) => controller.setConfirmPassword(value),
                  ),
                  SizedBox(height: 16),
                  Text('OR Continue with',
                      style: TextStyle(color: Colors.black45)),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Google login button
                      _buildSocialButton(
                        assetPath: 'asset/Google.png',
                        onTap: () {
                          print("Login with Google");
                        },
                      ),
                      SizedBox(width: 20),
                      // Facebook login button
                      _buildSocialButton(
                        assetPath: 'asset/Facebook.png',
                        onTap: () {
                          print("Login with Facebook");
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () async {
                      final result = controller.signup();
                      if (result != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(result)),
                        );
                      }
                    },
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      // Action for login
                    },
                    child: Text('Already have an account? Login here'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Function to create TextField with PNG icons
  Widget _buildTextField({
    required String hintText,
    required String iconPath,
    bool obscureText = false,
    required ValueChanged<String> onChanged,
  }) {
    return TextField(
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent, // Transparent background
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black54), // Hint text color
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0), // Padding around the icon
          child: Image.asset(
            iconPath, // Use PNG image as icon
            width: 24, // Width of the image
            height: 24, // Height of the image
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), // Rounded corners
          borderSide: BorderSide(color: Colors.black), // Border color
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20), // Vertical padding
      ),
      style: TextStyle(color: Colors.black), // Input text color
    );
  }

  // Function to create social login buttons
  Widget _buildSocialButton(
      {required String assetPath, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(assetPath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  // Function to create background with decorative circles
  Widget _buildBackground() {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(234, 251, 249, 1), // Background color
      ),
      child: Stack(
        children: [
          // Decorative circle in the top left
          Positioned(
            top: -111,
            left: -279,
            child: Container(
              width: 461,
              height: 461,
              decoration: ShapeDecoration(
                color: Color(0xFF29D6C8),
                shape: OvalBorder(),
              ),
            ),
          ),
          Positioned(
            top: 16,
            left: -84,
            child: Container(
              width: 150,
              height: 150,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(
                    width: 5,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xFF7EE6DE),
                  ),
                ),
              ),
            ),
          ),
          // Decorative circle in the bottom left
          Positioned(
            top: 207,
            left: 219,
            child: Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF29D6C8),
              ),
            ),
          ),
          Positioned(
            top: 166,
            left: 300,
            child: Container(
              width: 150,
              height: 150,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(
                    width: 5,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xFFA9EEE9),
                  ),
                ),
              ),
            ),
          ),
          // Decorative circle in the bottom right
          Positioned(
            top: 484,
            left: -253,
            child: Container(
              width: 461,
              height: 461,
              decoration: ShapeDecoration(
                color: Color(0xFF29D6C8),
                shape: OvalBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
