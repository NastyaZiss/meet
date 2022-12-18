// Экран, на котором будут все мероприятия, на которые записан юзер. Будет у всех.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:meet/screen/card_info.dart';
import 'package:meet/widgets/row_acc.dart';

import '../core/custom_widgets/const/global_color.dart';
import '../widgets/row_favorite.dart';

// import '../widgets/search_widget.dart';

class MyMeetScreen extends StatelessWidget {
  // static const AssetImage icon_acc = AssetImage('assets/img/icon_acc.png');
  static const AssetImage logo = AssetImage('assets/img/logo2.png');
  const MyMeetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        width: 250,
                        child: Image.asset("assets/img/text_favorite.png"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingScrolCardMeet(),
            ],
          ),
        ),
      ),
    );
  }
}

class SingScrolCardMeet extends StatelessWidget {
  const SingScrolCardMeet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.77,
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                print(index);
              },
              child: Card(
                clipBehavior: Clip.hardEdge,
                borderOnForeground: true,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      child: Image(
                        image: AssetImage("assets/img/meet_foto.png"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Название',
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Дата',
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'sdsdsdsdsd',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: 20,
        ));
  }
}
