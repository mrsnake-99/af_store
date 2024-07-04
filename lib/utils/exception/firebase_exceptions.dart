class FFirebaseExceptions implements Exception {
  // error code
  final String code;

  //constructor that make error code
  FFirebaseExceptions(this.code);

  //get the error message based on error code
  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown Firebase error occurred. Please try again later.';
      case 'invalid-custom-token':
        return 'The custom token format is incorrect. Please check your custom token.';
      case 'email-already-in-use':
        return 'The account already exists for that email.';
      case 'invalid-email':
        return 'The email address is badly formatted.';
      case 'operation-not-allowed':
        return 'Email & Password accounts are not enabled.';
      case 'weak-password':
        return 'The password is too weak.';
      case 'user-not-found':
        return 'No user found for that email.';
      case 'wrong-password':
        return 'Wrong password provided for that user.';
      case 'user-disabled':
        return 'The user account has been disabled by an administrator.';
      case 'too-many-requests':
        return 'Too many requests. Try again later.';
      case 'network-request-failed':
        return 'Network error. Please try again later.';
      case 'provider-already-linked':
        return 'The user is already linked to the given provider.';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Log in again before retrying this request.';
      case 'quota-exceeded':
        return 'The project quota for operation has been exceeded.';
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed in user.';
      case 'keychain-error':
        return 'There was an error saving to the keychain.';
      case 'internal-error':
        return 'An internal error has occurred. Please try again later.';
      default:
        return 'An unexpected Firebase error occurred. Please try again later';
    }
  }
}
// Commit at 2022-06-10 16:24:37
// Commit at 2022-08-13 18:42:01
// Commit at 2023-10-03 10:21:21
// Commit at 2023-05-22 12:24:50
// Commit at 2024-04-18 17:17:21
// Commit at 2024-08-17 18:14:20
// Commit at 2024-04-22 11:19:22
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
Random commit
Random commit
Random commit
Random commit
Random commit
