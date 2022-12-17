part of 'firebase_auth_bloc.dart';

class FirebaseAuthLoginEvent {
  final String email;
  final String password;

  FirebaseAuthLoginEvent({
    required this.email,
    required this.password,
  });
}
