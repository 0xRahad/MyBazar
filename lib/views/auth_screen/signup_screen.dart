import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mybazar/consts/consts.dart';
import 'package:mybazar/consts/lists.dart';
import 'package:mybazar/views/auth_screen/login_screen.dart';
import 'package:mybazar/widgets/app_logo_widget.dart';
import 'package:mybazar/widgets/bg_widget.dart';
import 'package:mybazar/widgets/custom_btn.dart';
import 'package:mybazar/widgets/custom_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogoWidget(),
              10.heightBox,
              "Join the $appname".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(title: name, hint: nameHint),
                  customTextField(title: email, hint: emailHint),
                  customTextField(title: password, hint: passwordHint),
                  customTextField(title: retypePassword, hint: passwordHint),
                  5.heightBox,
                  Row(
                    children: [
                      Checkbox(
                          checkColor: redColor,
                          value: false,
                          onChanged: (newValue) {}),
                      5.widthBox,
                      Expanded(
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "I agree to the ",
                              style:
                                  TextStyle(fontFamily: bold, color: fontGrey)),
                          TextSpan(
                              text: termsAndCond,
                              style:
                                  TextStyle(fontFamily: bold, color: redColor)),
                          TextSpan(
                              text: " & ",
                              style:
                                  TextStyle(fontFamily: bold, color: fontGrey)),
                          TextSpan(
                              text: privacyPolicy,
                              style:
                                  TextStyle(fontFamily: bold, color: redColor)),
                        ])),
                      )
                    ],
                  ),
                  5.heightBox,
                  customButton(
                      textColor: whiteColor,
                      color: redColor,
                      title: signup,
                      onPressed: () {})
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  10.heightBox,
                  GestureDetector(
                    onTap: (){
                      Get.to(LoginScreen());
                    },
                    child: RichText(text: const TextSpan(
                      children: [
                        TextSpan(
                          text: alreadyHaveAcc,
                          style: TextStyle(fontFamily: bold,color: fontGrey)
                        ),
                        TextSpan(
                            text: login,
                            style: TextStyle(fontFamily: bold,color: redColor)
                        ),
                      ]
                    )),
                  )
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.screenWidth - 70)
                  .shadow
                  .make(),
            ],
          ),
        ),
      ),
    ));
  }
}
