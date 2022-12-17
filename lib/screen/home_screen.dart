import 'package:flutter/material.dart';
import 'package:meet/widgets/meet_card_widget.dart';
import 'package:meet/widgets/row_acc.dart';

import '../const/global_color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Scaffold(
          body: Column(
            children: [
              RowAcc(),
              SizedBox(height: 20,),
              SearchWidget(),

              //ContentPartWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}

//виджет который показывает интреесные мероприятия, а на самом деле
class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(10),
        color: const  Color(0xfff4f6fd),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
      child: Row(
      children: [
        Icon(
        Icons.search_outlined,
        color: Color(0xffbfc205),),
        SizedBox(width: 5,),
        Text("Искать",
          style: AppStyleText.textStyle_input_search,),
        ],
      ),
    );
  }
}

// class CardMeet extends StatefulWidget {
//   // ScrollController _scrollController;
//
//   const CardMeet({Key? key}) : super(key: key);
//
//
//   @override
//   State<CardMeet> createState() => _CardMeetState();
// }
//
// class _CardMeetState extends State<CardMeet> {
//
//   // ScrollController _scrollController;
//   // TabController _tabController;
//
//   @override
//   Widget build(BuildContext context) {
//     return TabBarView(
//     // controller: _tabContoller,
//     children: [
//       ListView.builder(itemBuilder: (_, i)
//     {
//       return Container(
//           // padding: const EdgeInsets.all(8),
//           child: Row(children: [
//             Container(
//               child:Row(
//                   children: [
//                     Container(
//                       width: 90,
//                       height: 120,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         image: DecorationImage(
//                           image: AssetImage("assets/img/meet_foto.png"),
//                         ),
//                       ),  // Box Decoration)
//                     ),
//                   ],
//               ),
//             ),
//           ],
//           ),
//       );}
//       )]
//     );
//   }
// }

  // Container(
  //
  // child: Row(
  // children: [
  // C
  // ]),
  //
  //
  // margin: const EdgeInsets.only(left:20, right: 20,top:10, bottom: 10),
  // child: Container(
  // decoration: BoxDecoration(
  // borderRadius: BorderRadius.circular(10),
  // color: Colors.grey,
  // boxShadow: [ BoxShadow(
  // blurRadius: 2,
  // offset: Offset(0,0),
  // color: Colors.grey.withOpacity(0.2),),]
  // ),
  // child: Container(
  // padding: const ,
  // child: