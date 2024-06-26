import '3-util.dart';
import 'dart:convert' as convert;

Future<String> greetUser() async {
  try {
    var userData = await fetchUserData();
    Map<String, dynamic> username = convert.jsonDecode(userData);
    var user = username['username'];
    return 'Hello $user';
  } catch (err) {
    return('error caught: $err');
  }
}

Future<String> loginUser() async {
  try {
    var isLoggedIn = await checkCredentials();
    if (isLoggedIn == true) {
      print('There is a user: true');
      return greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (err) {
    return ('error caught: $err');
  }
}