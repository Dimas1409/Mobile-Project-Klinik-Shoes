import 'package:klinik_shoes_project/model/login_page_model/login_page_model.dart';

class LoginController {
  LoginModel _loginModel = LoginModel(username: '', password: '');

  // Method untuk set username
  void setUsername(String username) {
    _loginModel.username = username;
  }

  // Method untuk set password
  void setPassword(String password) {
    _loginModel.password = password;
  }

  // Simulasi login (ini bisa diganti dengan request ke server)
  String? login() {
    if (_loginModel.username.isEmpty || _loginModel.password.isEmpty) {
      return 'Please enter both username and password';
    }

    // Simulasi login sukses (username = "user", password = "password123")
    if (_loginModel.username == 'user' &&
        _loginModel.password == 'password123') {
      return 'Login Successful';
    } else {
      return 'Invalid username or password';
    }
  }
}
