import 'package:http/http.dart' as http;

class LoginService {
  String phoneNumber;
  String password;
  LoginService({
    required this.phoneNumber,
    required this.password,
  });

  Future<bool> login() async {
    var response = await http.post(Uri.parse(
        "http://khelaahobe.com/api/flutter/login?phone=$phoneNumber&password=$password"));
    if (response.statusCode != 200) {
      print('Error');
      return false;
    } else {
      print('Login Success');
      return true;
    }
  }
}
