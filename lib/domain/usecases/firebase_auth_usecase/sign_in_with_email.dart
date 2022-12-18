import 'package:equatable/equatable.dart';
import 'package:meet/core/usecases.dart';
import 'package:meet/domain/repositories/firebase_auth_repository.dart';

class SignInWithEmail
    extends UseCase<FirebaseAuthRepository, SignInWithEmailParams> {
  final FirebaseAuthRepository firebaseAuthRepository;

  SignInWithEmail({required this.firebaseAuthRepository});

  call(SignInWithEmailParams params) async {
    return await firebaseAuthRepository.signInWithEmailAndPassword(
        params.email, params.password);
  }
}

class SignInWithEmailParams extends Equatable {
  final email;
  final password;
  SignInWithEmailParams({required this.email, required this.password});
  @override
  // TODO: implement props
  List<Object?> get props => [email, password];
}
