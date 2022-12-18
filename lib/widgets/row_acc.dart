//виджет верхний  с иконкой юзера, находится на всех основныых экранах

import 'package:flutter/cupertino.dart';
import 'package:meet/core/custom_widgets/const/global_color.dart';

class RowAcc extends StatelessWidget {
  static const AssetImage icon_acc = AssetImage('assets/img/icon_acc.png');
  const RowAcc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 30,
                width: 150,
                child: Image.asset("assets/img/text_logo.png"),
              ),
            ],
          ),
          ImageIcon(
            icon_acc,
            size: 40,
            color: AppColors.blue,
          )
        ],
      ),
    );
  }
}
