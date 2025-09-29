import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_spanish/core/extension/extension.dart';
import '../../../core/theme/theme_color.dart';
import '../../../core/theme/theme_style.dart';
import '../../word_of_the_day/view/word_of_the_day.dart';
import '../widget/lesson_widget.dart';

class InteractiveGrammarLessons extends StatelessWidget {
  const InteractiveGrammarLessons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body: Stack(
        children: [
          Positioned(
            top: 70,
            left: 10,
            child: Text(
              "Interactive grammar lessons",
              textAlign: TextAlign.center,
              style: context.textTheme.bodyLarge?.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          _Box(),

          Positioned(
            top: 115,
            right: 115,
            child: InkWell(
              onTap: () => Get.to(() => WordOfTheDay()),
              child: Image.asset("images/pngwing.png", height: 140),
            ),
          ),
        ],
      ),
    );
  }
}

class _Box extends StatelessWidget {
  const _Box();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.1,
      left: 10,
      child: SizedBox(
        height: context.screenHeight * 0.7,
        width: context.screenWidth * 0.95,
        child: Card(
          shape: cardStyle,
          elevation: 4,
          color: Colors.white,
          child: SizedBox.expand(
            // 👈 force column to expand
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: context.screenHeight * 0.01),

                SizedBox(
                  height: context.screenHeight * 0.2,
                  width: context.screenWidth * 0.8,
                  child: Card(
                    shape: lessonCardStyle,
                    color: lessonBoxColor,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Image.asset(
                          "images/ribbit.png",
                          height: context.screenHeight * 0.25,
                        ),
                      ),
                    ),
                  ),
                ),

                Text(
                  "Cardinal Number",
                  style: context.textTheme.bodyLarge?.copyWith(fontSize: 25),
                ),
                Expanded(child: ClickableSteps()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
