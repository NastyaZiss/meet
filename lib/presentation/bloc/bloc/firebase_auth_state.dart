part of 'firebase_auth_bloc.dart';

class FirebaseAuthLoginState {
  final String? email;
  final String? password;

  FirebaseAuthLoginState copyWith({email, password}) {
    return FirebaseAuthLoginState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  FirebaseAuthLoginState({this.email, this.password});
}
