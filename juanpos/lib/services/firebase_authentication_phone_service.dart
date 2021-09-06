import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

class FirebaseAuthenticationPhoneResult extends FirebaseAuthenticationResult{
  /// Firebase user
  final String? code;

  /// Contains the error message for the request
  final String? errorMessage;
  final String? exceptionCode;

  FirebaseAuthenticationPhoneResult({this.code})
      : errorMessage = null,
        exceptionCode = null;

  FirebaseAuthenticationPhoneResult.error({this.errorMessage, this.exceptionCode})
      : code = null;

  /// Returns true if the response has an error associated with it
  bool get hasError => errorMessage != null && errorMessage!.isNotEmpty;
}

/*
class FirebaseAuthenticationPhoneService extends FirebaseAuthenticationService {
  /// Uses `createUserWithEmailAndPassword` to sign up to the Firebase application
  Future<FirebaseAuthenticationResult> createAccountWithPhone({
    required String phone,
    required String password,
  }) async {
    try {
      log?.d('phone:$phone');
      final result = await firebaseAuth.verifyPhoneNumber(phoneNumber: phoneNumber, verificationCompleted: verificationCompleted, verificationFailed: verificationFailed, codeSent: codeSent, codeAutoRetrievalTimeout: codeAutoRetrievalTimeout)
      
      log?.d(
          'Create user with email result: ${result.verificationId} ${result.}');

      return FirebaseAuthenticationResult(user: result.user);
    } on FirebaseAuthException catch (e) {
      log?.e('A firebase exception has occured. $e');
      return FirebaseAuthenticationResult.error(
          exceptionCode: e.code.toLowerCase(),
          errorMessage: getErrorMessageFromFirebaseException(e));
    } on Exception catch (e) {
      log?.e('A general exception has occured. $e');
      return FirebaseAuthenticationResult.error(
          errorMessage:
          'We could not create your account at this time. Please try again.');
    }
  }
}
*/
