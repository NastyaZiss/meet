import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet/domain/usecases/firebase_auth_usecase/create_user_with_email_password.dart';
import 'package:meet/domain/usecases/firebase_auth_usecase/sign_in_with_email.dart';
part 'firebase_auth_event.dart';
part 'firebase_auth_state.dart';

class FirebaseAuthBloc
    extends Bloc<FirebaseAuthLoginEvent, FirebaseAuthLoginState> {
  SignInWithEmail signInWithEmail;

  FirebaseAuthBloc({required this.signInWithEmail})
      : super(FirebaseAuthLoginState()) {
    on<FirebaseAuthLoginEvent>((event, emit) async {
      final instance = await signInWithEmail(
          SignInWithEmailParams(email: event.email, password: event.password));
      if (instance != null) {
        emit(state.copyWith(success: true));
      }
    });
  }
}
