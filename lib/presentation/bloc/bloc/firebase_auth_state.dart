part of 'firebase_auth_bloc.dart';

class FirebaseAuthLoginState {
  final String? email;
  final String? password;
  final bool? success;

  FirebaseAuthLoginState copyWith({email, password, success}) {
    return FirebaseAuthLoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      success: success ?? this.success,
    );
  }

  FirebaseAuthLoginState({
    this.email,
    this.password,
    this.success,
  });
}
