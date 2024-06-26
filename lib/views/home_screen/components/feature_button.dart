import 'package:mybazar/consts/consts.dart';

Widget featureButton({String? title, icon}){
  return Row(
    children: [
      Image.asset(icon, width: 60,fit: BoxFit.fill,),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.width(200).margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(4)).outerShadowSm.white.make();
}