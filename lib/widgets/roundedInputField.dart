// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:meet/const/global_color.dart';
//
// class Body extends StatelessWidget {
//   const Body({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Column(mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text("Email",style: AppStyleText.textStyle_red,),
//         Container( height: 100, width: 100,
//             child: Image.asset("assets/img/logo2.png")),//img
//         TextFieldContainer(
//           child: TextFieldContainer(
//             child: TextField(
//               decoration: InputDecoration(hintText: "Ваша почта",
//                 icon: Icon(Icons.person,color: AppColors.blue,),
//               ),
//             ),
//           ),
//         )
//         // Container(
//         //   padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
//         //   decoration: BoxDecoration(color: AppColors.yellow,
//         //     borderRadius: BorderRadius.circular(20),
//         //   ),
//         // ),
//       ],
//       ),
//     );
//   }
// }
//
//
// class RoundedInputField extends StatelessWidget {
//   final String hightText;
//   final IconData icon;
//   final ValueChanged<String> onChanged;
//   const RoundedInputField({
//     Key key,
//     this.hightText,
//     this.icon = Icons.person,
//     this.onChanged,
// }): super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFieldContainer(
//       child: TextField(
//         onChanged: OnChanged,
//         decoration: InputDecoration(
//             icon: Icon(icon, color: AppColors.blue2,)
//         ),
//       ),
//     );
//   }
// }
// class TextFieldContainer extends StatelessWidget {
//   final Widget child;
//   const TextFieldContainer({
//     Key key, this.child
// }): super (key: key);
//   // const ({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10),
//       padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
//       width: size.width*0.8,
//       decoration: BoxDecoration(color: AppColors.red,
//       borderRadius: BorderRadius.circular(29),
//       ),
//       child: child,
//     );
//   }
// }
// Expanded(
//   child: Container(
//     margin: EdgeInsets.only(left: 20,right: 20,top: 20),
//     child: Column(
//       children: [
//         Container(
//           color: Colors.white,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(20))
//           ),
//           padding: EdgeInsets.only(left: 20),
//           child: TextField(
//             decoration: InputDecoration(
//               border: InputBorder.none,
//               hintText: "Email",
//               // contentPadding: EdgeInsets.only(left: 10),
//               prefixIcon: Icon(Icons.email)
//             ),
//           ),
//         ),
//       ],
//     ),
//   ),
// )

