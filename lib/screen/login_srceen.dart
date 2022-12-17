import 'package:flutter/material.dart';

import '../const/global_color.dart';
import '../const/global_color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const AssetImage logo_registr = AssetImage('assets/img/logo2.png');
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: ImageIcon(logo_registr, size: 90,color:AppColors.blue)),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Column(
                        children: [

                          Container(
                            padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: TextFormField(
                              style: TextStyle(color: AppColors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.mail,color: AppColors.blue,size: 30,),
                                labelText: "Email",
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: TextFormField(
                              obscureText: true,
                              style: TextStyle(color: AppColors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock,color: AppColors.blue,size: 32,),
                                labelText: "Пароль",
                                labelStyle: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                            TextButton(
                              onPressed: (){},
                              child: Text("Забыли пароль?", style: AppStyleText.textStyle_red,),
                            )],),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: SizedBox(height: 55,
                            width: double.infinity,
                            child:ElevatedButton(
                              style: ElevatedButton.styleFrom(

                                backgroundColor: AppColors.blue,
                                fixedSize: Size.fromWidth(100),
                                padding: EdgeInsets.all(5),
                              ),
                              child: Text("Войти"),
                              onPressed: () {
                                //Code Here
                              },
                            ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text(
                              "У вас еще нет аккаунта? ",
                              style: AppStyleText.textStyle_black,),
                            Text("Зарегестрироваться",
                              style: AppStyleText.textStyle_blue,),
                          ],)
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
    );
  }
}
