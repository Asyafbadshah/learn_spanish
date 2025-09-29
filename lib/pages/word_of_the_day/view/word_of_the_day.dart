import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_spanish/core/extension/extension.dart';
import '../../../core/theme/theme_color.dart';
import '../../../core/theme/theme_style.dart';
import '../../interactive_grammar_lessons/view/interactive_grammar_lessons.dart';


class WordOfTheDay extends StatelessWidget {
  const WordOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:wordOfTheDayBackGroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 80,
              left: 80,
              child: Text(
                "Word of the day",
                textAlign: TextAlign.center,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            _Box(),
            Positioned(
                top: 130,
                right: 145,
                child: InkWell(


                    child: Image.asset("images/wordoftheday.png",height: 70,))

            )
          ],
        ),
      ),
    );
  }
}
class _Box extends StatelessWidget {
  const _Box();

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      bottom: 100,
      left: 40,
      child: SizedBox(
        height: context.screenHeight * 0.6,
        width: context.screenWidth * 0.8,
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: wordOfTheDayCardDecoration,

          color: kWhite,
          child: SizedBox.expand(
            // 👈 force column to expand
            child:Column(
              children: [
                SizedBox(height: 60,),
                Text("MONDAY, APRIL 3"),
                SizedBox(height: 15,),
                Text("la mochila",style: context.textTheme.bodyLarge?.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 15,),
                Text("El libro esta en mi mochila"),
                Text(
                  '— The book is in my\nbackpack',
                  textAlign: TextAlign.center,
                  style: context.textTheme.bodyLarge?.copyWith(

                    color: textColor,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: ()=>Get.to(()=>InteractiveGrammarLessons()),
                  child: Container(
                    height: context.screenHeight * 0.25,
                    width: context.screenWidth,
                    color:homeBackGroundColor,
                    child: Center(
                      child: Image.asset("images/bag.png", height: context.screenHeight*0.15
                        ,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
