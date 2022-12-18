import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet/core/custom_widgets/const/global_color.dart';
import 'package:meet/data/datasources/firebase_auth/firebase_auth_login.dart';
import 'package:meet/presentation/bloc/bloc/firebase_auth_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const AssetImage logo_registr = AssetImage('assets/img/logo2.png');
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return BlocListener<FirebaseAuthBloc, FirebaseAuthLoginState>(
      listener: (BuildContext context, state) {
        if (state.success == true) {
          Navigator.of(context).pushNamed('/welcome');
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ImageIcon(logo_registr, size: 90, color: AppColors.blue),
              ),
              Center(child: Text('Вход', style: AppStyleText.textStyle_1)),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: TextFormField(
                                controller: emailController,
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.mail,
                                    color: AppColors.blue,
                                    size: 30,
                                  ),
                                  labelText: "Почта",
                                  labelStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: TextFormField(
                                controller: passwordController,
                                obscureText: true,
                                style: TextStyle(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: AppColors.blue,
                                    size: 32,
                                  ),
                                  labelText: "Пароль",
                                  labelStyle: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SizedBox(
                                height: 55,
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.blue,
                                    fixedSize: Size.fromWidth(100),
                                    padding: EdgeInsets.all(5),
                                  ),
                                  child: BlocBuilder<FirebaseAuthBloc,
                                      FirebaseAuthLoginState>(
                                    builder: (context, state) {
                                      return Text(
                                        "Войти",
                                        style: TextStyle(fontSize: 20),
                                      );
                                    },
                                  ),
                                  onPressed: () {
                                    context
                                        .read<FirebaseAuthBloc>()
                                        .add(FirebaseAuthLoginEvent(
                                          email: emailController.text,
                                          password: passwordController.text,
                                        ));
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/registration');
                                    },
                                    child: Text(
                                      'Зарегистрироваться',
                                      style: AppStyleText.textStyle_blue,
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
