import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_spanish/pages/home/view/home_view.dart';

import '../../../core/theme/theme_color.dart';
import '../../../core/theme/theme_style.dart';


class OnboardingController extends GetxController {
  var currentIndex = 0.obs;
  final PageController pageController = PageController();

  final List<Map<String, String>> onboardingData = [
    {
      "image": "images/bag.png",
      "title": "Dictionary Pro",
      "subtitle": "A fun way to master English\nwords, phrases, and translations."
    },
    {
      "image": "images/surfing.png",
      "title": "Translate Words",
      "subtitle": "Strengthen your language skills by\ntranslating everyday words and sentences."
    },
    {
      "image": "images/pngwing.png",
      "title": "AI Chatbot Practice",
      "subtitle": "Practice conversations with an AI\nthat helps you improve step by step."
    },
  ];

  void changePage(int index) {
    currentIndex.value = index;
  }

  void nextPage() {
    if (currentIndex.value < onboardingData.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      // TODO: Navigate to home or login
      Get.offAll(()=>HomeView());
    }
  }

  void skip() {
    pageController.jumpToPage(onboardingData.length - 1);
  }
}
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      backgroundColor: homeBackGroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // PageView
            _PageView(),

            // Dots indicator
            _DotsIndicator(),

            const SizedBox(height: 20),

            // Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  // Next / Get Started
                  SizedBox(
                    width: double.infinity,
                    child: Obx(() => ElevatedButton(
                      onPressed: controller.nextPage,
                      style: onBoardingButton,
                      child: Text(
                        controller.currentIndex.value ==
                            controller.onboardingData.length - 1
                            ? "Get Started →"
                            : "Next",
                        style:  context.textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    )),
                  ),
                  const SizedBox(height: 12),
                  // Skip button
                  TextButton(
                    onPressed: controller.skip,
                    child:  Text(
                      "Skip",
                      style: context.textTheme.bodyLarge?.copyWith(color: Colors.black54, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
class _PageView extends StatelessWidget {
   _PageView();
  final controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return   Expanded(
      child: PageView.builder(
        controller: controller.pageController,
        itemCount: controller.onboardingData.length,
        onPageChanged: controller.changePage,
        itemBuilder: (context, index) {
          var item = controller.onboardingData[index];
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Center(
                  child: Image.asset(
                    item["image"]!,
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  item["title"]!,
                  textAlign: TextAlign.center,
                  style:  context.textTheme.bodyLarge?.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  item["subtitle"]!,
                  textAlign: TextAlign.center,
                  style:  context.textTheme.bodyLarge?.copyWith(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
class _DotsIndicator extends StatelessWidget {
   _DotsIndicator();
  final controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return  Obx(() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(controller.onboardingData.length, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: controller.currentIndex.value == index ? 12 : 8,
          height: controller.currentIndex.value == index ? 12 : 8,
          decoration: BoxDecoration(
            color: controller.currentIndex.value == index
                ? speakerIconColor
                : Colors.grey[300],
            shape: BoxShape.circle,
          ),
        );
      }),
    ));
  }
}

