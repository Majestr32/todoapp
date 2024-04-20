import 'package:firebase_core/firebase_core.dart';

import 'exception.dart';

const Map<String, String> _fbCodesToMessage = {
  'user-not-found': "Account not found",
  'wrong-password': "Wrong email or password"
};

class FirebaseExceptionMapper {
  final FirebaseException e;

  FirebaseExceptionMapper(this.e);

  AppException toAppException() {
    return AppException(
        message: _fbCodesToMessage[e.code] ??
            e.message ??
            "Unpredicted error occurred",
        source: e);
  }
}
