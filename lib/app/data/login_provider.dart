import 'package:get/get.dart';

class LoginProvider extends GetConnect {
  Future<Response> auth(var data) {
    var myHeader = {
      'Accept': 'application/json',
    };
    return post('https://pembayaranspp.test/api/login/waris', data,
        headers: myHeader);
  }
}
