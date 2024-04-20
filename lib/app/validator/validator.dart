class AppValidator {
  static String? validateEmail(String? val) {
    if (val == null || val.isEmpty) return 'Email can`t be empty';
    final emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(val);
    if (!emailValid) return 'Email is not valid';
    return null;
  }

  static String? validatePassword(String? val){
    if(val == null || val.isEmpty) return 'Password can`t be empty';
    final passwordValid = val.length >= 6;
    if(!passwordValid) return 'Password must be more than 6 characters';
    return null;
  }

  static String? validateConfirmPassword(String? val, String? passwordVal){
    if(val == null || passwordVal == null || val != passwordVal) return 'Password mismatch';
    return null;
  }
}
