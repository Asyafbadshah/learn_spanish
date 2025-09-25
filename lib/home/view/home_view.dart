import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_spanish/core/extention/extentsion.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
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

          Positioned(
            bottom: 0.1,
            left: 10,
            child: SizedBox(
              height: context.screenHeight * 0.67,
              width: context.screenWidth * 0.95,
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.blue.withValues(alpha: 0.07), // border color
                    width: 6, // border width
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                elevation: 4,
                color: Colors.white,
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
                            color: Colors.blue,
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
                              color: Colors.blue,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            CupertinoIcons.speaker_3,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),

                      Text(
                        "MASCULINE NOUN",
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "(animal)",
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontSize: 18,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "perro",
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "I walk the dog three times",
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontSize: 18,
                        ),
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
                            "Saco al perro",
                            style: context.textTheme.bodyLarge?.copyWith(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "tres veces al dia",
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          /// Circle Avatar
          Positioned(
            top: 170,
            right: 110,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white, // 👈 outer white border
                  width: 6,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              child: const CircleAvatar(
                radius: 60,
                backgroundColor: Color(0xFFE6F0FA),
                // 👈 light blue background inside circle
                backgroundImage: AssetImage("images/happy.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
