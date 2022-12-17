import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meet/const/global_color.dart';
//карточка мероприятия

class MeetCardWidget extends StatelessWidget {
  const MeetCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 180,
      decoration: BoxDecoration(
        // color: AppColors.meet_card,
        color: Colors.red,
      borderRadius: BorderRadius.circular(30)
    ),
    );
  }
}
