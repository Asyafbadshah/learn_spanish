import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_spanish/core/extension/extension.dart';
import 'package:learn_spanish/speech/view/speech.dart';
class HomeSecond extends StatelessWidget {
  const HomeSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/background.png",
              fit: BoxFit.cover,      // cover entire screen
            ),
          ),

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
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       fixedSize: Size(100, 40),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(12)
                       )
                     ),
                       onPressed: (){}, child: Row(
                     children: [
                       Icon(CupertinoIcons.wifi_slash,size: 16,),
                       Text(" offline",style: context.textTheme.bodyLarge?.copyWith(
                         fontSize: 10
                       ),)
                     ],
                   )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "great",
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
                            "chevere",
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
                      SizedBox(height: 20),

                      Text(
                        "ADJECTIVE",
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "(colloquial) (very good)",
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontSize: 18,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "chevere",
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text(
                            "The movie was great.",
                            style: context.textTheme.bodyLarge?.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "—— La",
                            style: context.textTheme.bodyLarge?.copyWith(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "pelicula estaba chevere",
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
            top: 140,
            right: 100,
            child: InkWell(
                onTap: ()=>Get.to(()=>Speech()),
                
                child: Image.asset("images/plane.png",height: 150,))

          )

        ],
      ),
    );
  }
}
