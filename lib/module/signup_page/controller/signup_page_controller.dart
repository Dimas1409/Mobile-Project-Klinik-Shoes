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

  // Fungsi untuk mendaftarkan user (disederhanakan untuk alur)
  String? signup() {
    // Simulasi pendaftaran berhasil
    print('Pendaftaran berhasil untuk: ${model.username}');
    return null; // Tidak ada error, mendaftar berhasil
  }
}