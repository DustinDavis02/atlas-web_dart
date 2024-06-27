import '2-util.dart';

Future<void> getUser() async {
  try {
    var user = await fetchUser();
    print(user);
  } catch (err) {
    print('error caught: $err');
  }
}