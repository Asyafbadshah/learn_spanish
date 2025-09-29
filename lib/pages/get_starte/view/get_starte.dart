import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_spanish/core/theme/theme_color.dart';

import '../../ on_boarding_page/view/on_boarding_page.dart';
import '../../../core/theme/theme_style.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("images/3x/dictionary.png",
                    filterQuality: FilterQuality.high, ),
                  Text("Dictionary\npro",style: context.textTheme.bodyLarge?.copyWith(
                    color: speakerIconColor,
                    fontSize: 18
                  ),),
                ],
              ),

              const SizedBox(height: 30),

              // Subtitle
               Text(
                "A fun way to master English\nwords, phrases, and\n translations.",
                textAlign: TextAlign.center,
                style: context.textTheme.bodyLarge?.copyWith(fontSize: 20,),
              ),

              const SizedBox(height: 40),

              // Features
              FeatureItem(text: "Word Guessing Challenges"),
              FeatureItem(text: "Translate & Learn Quizzes"),
              FeatureItem(text: "AI Chatbot Practice"),
              FeatureItem(text: "Common Phrase Collections"),
              FeatureItem(text: "Multiple Language Support"),

              const Spacer(),

              // Get Started Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                   Get.to(()=>OnboardingPage());
                  },
                  style: getStartedButton,
                  child:  Text(
                    "Get Started →",
                    style: context.textTheme.bodyLarge?.copyWith(fontSize: 16, color: kWhite),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom widget for feature list
class FeatureItem extends StatelessWidget {
  final String text;
  const FeatureItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
           Icon(Icons.check_circle, color: speakerIconColor),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style:  context.textTheme.bodyLarge?.copyWith(fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
