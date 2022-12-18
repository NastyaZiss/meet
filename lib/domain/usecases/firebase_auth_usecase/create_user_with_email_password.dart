import 'package:equatable/equatable.dart';
import 'package:meet/core/usecases.dart';
import 'package:meet/domain/repositories/firebase_auth_repository.dart';

class CreateUserWithEmailPassword
    extends UseCase<FirebaseAuthRepository, CreateUserWithEmailPasswordParams> {
  final FirebaseAuthRepository firebaseAuthRepository;

  CreateUserWithEmailPassword({required this.firebaseAuthRepository});

  call(CreateUserWithEmailPasswordParams params) async {
    return await firebaseAuthRepository.createUserWithEmailAndPassword(
        params.email, params.password);
  }
}

class CreateUserWithEmailPasswordParams extends Equatable {
  final email;
  final password;
  CreateUserWithEmailPasswordParams(
      {required this.email, required this.password});
  @override
  // TODO: implement props
  List<Object?> get props => [email, password];
}
