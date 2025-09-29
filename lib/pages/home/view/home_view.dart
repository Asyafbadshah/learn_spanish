import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_spanish/core/extension/extension.dart';
import 'package:learn_spanish/core/theme/theme_color.dart';

import '../../../core/theme/theme_style.dart';
import '../../translate_offline/view/translate_offline.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBackGroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 54,
            left: 18,
            child: Text(
              "The most popular \n Spanish-English dictionary",
              textAlign: TextAlign.center,
              style: context.textTheme.bodyLarge?.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          _Box(),
          _Image(),
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
        height: context.screenHeight * 0.67,
        width: context.screenWidth * 0.95,
        child: Card(
          shape: cardStyle,
          elevation: 4,
          color: kWhite,
          child: SizedBox.expand(
            // 👈 force column to expand
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: context.screenHeight * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "dog",
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      CupertinoIcons.speaker_3,
                      size: 30,
                      color: speakerIconColor,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text(
                      "perro",
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontSize: 40,
                        color: speakerIconColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      CupertinoIcons.speaker_3,
                      color: speakerIconColor,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(height: 20),

                Text(
                  "MASCULINE NOUN",
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontSize: 12,
                    color: textColor,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "(animal)",
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontSize: 18,
                    color: seasonsIconColor,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "perro",
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: speakerIconColor,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "I walk the dog three times",
                  style: context.textTheme.bodyLarge?.copyWith(fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text(
                      "a day.",
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "—— Saco al perro",
                      style: context.textTheme.bodyLarge?.copyWith(
                        fontSize: 18,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
                Text(
                  "tres veces al dia",
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontSize: 18,
                    color: textColor,
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

class _Image extends StatelessWidget {
  const _Image();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 180,
      right: 110,
      child: InkWell(
        onTap: () => Get.to(() => HomeSecond()),
        child: Container(
          decoration: imageContainerDecoration,
          child: Card(
            margin: EdgeInsets.zero,
            shape:imageCardDecoration,
            child: CircleAvatar(
              radius: 60,
              backgroundColor:imageBackGroundColor,
              child: ClipOval(
                child: Image.asset("images/Dog.png", width: 240, height: 110),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
