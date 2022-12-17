//виджет верхний  с иконкой юзера, находится на всех основныых экранах

import 'package:flutter/cupertino.dart';
import 'package:meet/const/global_color.dart';

class RowFavorite extends StatelessWidget {
  const RowFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,width: 200,
            child: Image.asset("assets/img/text_favorite.png"),
          )
      ],),
    );
  }
}
// Container(
//   height: 1,
//   child: Expanded(
//     child: Container(decoration: BoxDecoration(color: AppColors.blue),),
//   ),
// ),

// Container(
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
// border: Border.all(color: AppColors.blue)),
// height: 50,width: 200,
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Image.asset("assets/img/text_favorite.png"),
// ),),