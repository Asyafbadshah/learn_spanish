import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_spanish/core/extension/extension.dart';

class WordOfTheDay extends StatelessWidget {
  const WordOfTheDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 80,
              left: 80,
              child: Text(
                "Translate offline",
                textAlign: TextAlign.center,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Positioned(
              bottom: 150,
              left: 40,
              child: SizedBox(
                height: context.screenHeight * 0.5,
                width: context.screenWidth * 0.7,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(
                      20
                    ),
                  ),

                  color: Colors.white,
                  child: SizedBox.expand(
                    // 👈 force column to expand
                    child:Column(
                      children: [
                        Text("MONDAY, APRIL 3"),
                        Text("la mochila"),
                        Text("El libro esta en mi mochila"),
                        Text(
                          '— The book is in my\nbackpack',
                          textAlign: TextAlign.center,
                          style: context.textTheme.bodyLarge?.copyWith(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: context.screenHeight * 0.2,
                          width: context.screenWidth,
                          color: Colors.blue.shade50,
                          child: Center(
                            child: Image.asset("images/school-bag (2).png", height: 300),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
