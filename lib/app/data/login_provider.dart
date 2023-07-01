import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  Future<Response> auth(var data) {
    var myHeader = {
      'Accept': 'application/json',
    };
    return post('http://10.0.2.2:8000/api/login/waris', data,
        headers: myHeader);
  }
}
