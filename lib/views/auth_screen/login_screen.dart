import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybazar/consts/consts.dart';
import 'package:mybazar/consts/lists.dart';
import 'package:mybazar/views/auth_screen/signup_screen.dart';
import 'package:mybazar/widgets/app_logo_widget.dart';
import 'package:mybazar/widgets/bg_widget.dart';
import 'package:mybazar/widgets/custom_btn.dart';
import 'package:mybazar/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(title: "Email", hint: emailHint),
                  customTextField(title: "Password", hint: passwordHint),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgotPass.text.make())),
                  5.heightBox,
                  customButton(
                          textColor: whiteColor,
                          color: redColor,
                          title: login,
                          onPressed: () {})
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  5.heightBox,
                  createNewAccount.text.color(fontGrey).make(),
                  5.heightBox,
                  customButton(
                          textColor: redColor,
                          color: lightGolden,
                          title: signup,
                          onPressed: () {
                            Get.to(SignupScreen());
                          })
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: CircleAvatar(
                                backgroundColor: lightGrey,
                                radius: 25,
                                child: Image.asset(
                                  socialIconList[index],
                                  width: 30,
                                ),
                              ),
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
