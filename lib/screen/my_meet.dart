// Экран, на котором будут все мероприятия, на которые записан юзер. Будет у всех.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meet/const/global_color.dart';
import 'package:meet/screen/card_info.dart';
import 'package:meet/widgets/row_acc.dart';

import '../widgets/row_favorite.dart';

// import '../widgets/search_widget.dart';

class MyMeetScreen extends StatelessWidget {
  static const AssetImage icon_acc = AssetImage('assets/img/icon_acc.png');
  static const AssetImage logo = AssetImage('assets/img/logo2.png');
  const MyMeetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body:
           SingleChildScrollView(
             child: Column(
               children: [
                 Center(child: ImageIcon(logo, size: 40,color:AppColors.blue)),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Container(height: 50,width: 250,
                           child: Image.asset("assets/img/text_favorite.png"),),
                       ],
                     ),
                   ],),
                 SizedBox(height: 20,),
                 SingScrolCardMeet(),
               ],
             ),
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
    final String title = "Хакатон";
    final String TimeData = "13 dec, 13:00";
    final String About = "Популяризация ИТ-специальностей,овской области.ационных технологий.Всесторвистемы СПО.";
    return 
      Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height:260,
            width: 160,
            child: Card(
              color: AppColors.meet_card,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 130,
                      child: Image.asset("assets/img/meet_foto.png", fit: BoxFit.cover,),
                  ),
                    Text(title,style: AppStyleText.h_title,),
                    Text(TimeData,style: AppStyleText.h_DT,),
                    Text(About,style: AppStyleText.h_about,),
                  ],
                ),
              ),
              //decoration: BoxDecoration(color: Colors.red),),
            ),
          ),
          Container(
            height:260,
            width: 160,
            child: Card(
              color: AppColors.meet_card,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 130,
                      child: Image.asset("assets/img/meet_foto.png", fit: BoxFit.cover,),
                    ),
                    Text(title,style: AppStyleText.h_title,),
                    Text(TimeData,style: AppStyleText.h_DT,),
                    Text(About,style: AppStyleText.h_about,),
                  ],
                ),
              ),
              //decoration: BoxDecoration(color: Colors.red),),
            ),
          ),
          Container(
            height:260,
            width: 160,
            child: Card(
              color: AppColors.meet_card,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 130,
                      child: Image.asset("assets/img/meet_foto.png", fit: BoxFit.cover,),
                    ),
                    Text(title,style: AppStyleText.h_title,),
                    Text(TimeData,style: AppStyleText.h_DT,),
                    Text(About,style: AppStyleText.h_about,),
                  ],
                ),
              ),
              //decoration: BoxDecoration(color: Colors.red),),
            ),
          ),
          Container(
            height:260,
            width: 160,
            child: Card(
              color: AppColors.meet_card,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 130,
                      child: Image.asset("assets/img/meet_foto.png", fit: BoxFit.cover,),
                    ),
                    Text(title,style: AppStyleText.h_title,),
                    Text(TimeData,style: AppStyleText.h_DT,),
                    Text(About,style: AppStyleText.h_about,),
                  ],
                ),
              ),
              //decoration: BoxDecoration(color: Colors.red),),
            ),
          ),
          ],
        ),
      );
  }
}


  //         title: Text("The list item #$index'),
  //         subtitle: Text('The subtitle'),
  //         leading: Icon(Icons.thumb_up),
  //         trailing: Icon(Icons.arrow_forward),
  //         onTap: () {
  //           Navigator.push(
  //           context,
  //           MaterialPageRoute(builder: (context) => CardInfoScreen(index)));
  //     },
  //   );\ // ); // List Tile
  // },);});}

