import 'package:juanpos/api/firestore_api.dart';
import 'package:juanpos/app/app.locator.dart';
import 'package:juanpos/app/app.logger.dart';
import 'package:juanpos/model/application_models.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

class UserService {
  final log = getLogger('UserService');

  final _firestoreApi = locator<FirestoreApi>();
  final _firebaseAuthenticationService =
  locator<FirebaseAuthenticationService>();

  UserDetails? _currentUser;

  UserDetails get currentUser => _currentUser!;

  bool get hasLoggedInUser => _firebaseAuthenticationService.hasUser;

  Future<void> syncUserAccount() async {
    final firebaseUserId =
        _firebaseAuthenticationService.firebaseAuth.currentUser!.uid;

    log.v('Sync user $firebaseUserId');

    final userAccount = await _firestoreApi.getUser(userId: firebaseUserId);

    if (userAccount != null) {
      log.v('User account exists. Save as _currentUser');
      _currentUser = userAccount;
    }
  }

  Future<void> syncOrCreateUserAccount({required UserDetails user}) async {
    log.i('user:$user');

    await syncUserAccount();

    if (_currentUser == null) {
      log.v('We have no user account. Create a new user ...');
      await _firestoreApi.createUser(user: user);
      _currentUser = user;
      log.v('_currentUser has been saved');
    }
  }

  Future<void> logOutUserAccount({required UserDetails user}) async {
    log.i('user:$user');

    await _firebaseAuthenticationService.logout();

    if (_currentUser == null) {
      log.v('We have no user account. Create a new user ...');
      await _firestoreApi.createUser(user: user);
      _currentUser = user;
      log.v('_currentUser has been saved');
    }
  }
}