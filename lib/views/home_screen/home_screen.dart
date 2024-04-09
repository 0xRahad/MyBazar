import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mybazar/consts/consts.dart';
import 'package:mybazar/consts/lists.dart';
import 'package:mybazar/views/home_screen/components/feature_button.dart';
import 'package:mybazar/widgets/homeButton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchAnything,
                  hintStyle: TextStyle(color: textfieldGrey),
                  suffixIcon: Icon(Icons.search),
                  border: InputBorder.none

                ),
              ),
            ),
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    //swiper brands
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: sliderList.length, itemBuilder: (context, index) {
                      return Image.asset(sliderList[index], fit: BoxFit.fill,).box.rounded.clip(Clip.antiAlias)
                          .margin(EdgeInsets.symmetric(horizontal: 8)).make();
                    }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(2, (index) => homeButtons(
                          onPressed: (){},
                          title: index == 0? todayDeal : flashsale,
                          width: context.screenWidth / 2.5 ,
                          height: context.screenHeight * 0.15,
                          icon: index == 0 ? icTodaysDeal : icFlashDeal
                      )),
                    ),
                    10.heightBox,
                    //2nd Swiper
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: secondSliderList.length, itemBuilder: (context, index) {
                      return Image.asset(secondSliderList[index], fit: BoxFit.fill,).box.rounded.clip(Clip.antiAlias)
                          .margin(EdgeInsets.symmetric(horizontal: 8)).make();
                    }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(3, (index) => homeButtons(
                          onPressed: (){},
                          title: index == 0? topCategories : index == 1 ? brand : topSellers,
                          width: context.screenWidth / 3.5 ,
                          height: context.screenHeight * 0.15,
                          icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller
                      )),
                    ),
                    20.heightBox,
                    //featured categories
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Align(alignment: Alignment.centerLeft,
                          child: featureCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
                    ),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(3, (index) => Column(
                          children: [
                            featureButton(
                              icon: featuredImages1[index],
                              title: featuredTitles1[index]
                            ),
                            10.heightBox,
                            featureButton(
                                icon: featuredImages2[index],
                                title: featuredTitles2[index]
                            ),
                          ],
                        )).toList(),
                      ),
                    ),
                    //featured Product
                    20.heightBox,
                    Container(
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredProduct.text.fontFamily(semibold).white.size(20).make()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
