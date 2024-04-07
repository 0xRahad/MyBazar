import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mybazar/consts/consts.dart';
import 'package:mybazar/widgets/app_logo_widget.dart';
import 'package:mybazar/widgets/bg_widget.dart';
import 'package:mybazar/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(
              children: [
                customTextField(title: "Email", hint: emailHint),
                customTextField(title: "Password", hint: passwordHint),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgotPass.text.make()))
              ],
            )
                .box
                .white
                .rounded
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .make()
          ],
        ),
      ),
    ));
  }
}
