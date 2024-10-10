import 'package:klinik_shoes_project/model/signup_page_model/signup_page_model.dart';

class SignupPageController {
  final SignupModel model = SignupModel();

  // Setter untuk mengupdate data di model
  void setUsername(String value) {
    model.username = value;
  }

  void setPassword(String value) {
    model.password = value;
  }

  void setConfirmPassword(String value) {
    model.confirmPassword = value;
  }

  // Fungsi untuk mendaftarkan user
  String? signup() {
    // Lakukan validasi input
    String? usernameError = model.validateUsername();
    if (usernameError != null) {
      return usernameError;
    }

    String? passwordError = model.validatePassword();
    if (passwordError != null) {
      return passwordError;
    }

    String? confirmPasswordError = model.validateConfirmPassword();
    if (confirmPasswordError != null) {
      return confirmPasswordError;
    }

    // Jika semua validasi berhasil, proses pendaftaran bisa dilanjutkan
    print('Pendaftaran berhasil untuk: ${model.username}');
    return null; // Tidak ada error
  }
}
