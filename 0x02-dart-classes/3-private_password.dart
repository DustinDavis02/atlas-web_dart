class Password {
  String _password = '';

  Password({String password = ''}) {
    _password = password;
  }

  bool isValid() {
    bool lengthCheck = _password.length >= 8 && _password.length <= 16;

    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));

    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));

    bool hasNumber = _password.contains(RegExp(r'[0-9]'));

    return lengthCheck && hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}