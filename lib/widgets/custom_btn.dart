import 'package:mybazar/consts/consts.dart';

Widget customButton({String? title, color,textColor, onPressed}){
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
    ),
    child: title!.text.color(textColor).make(),
  );
}