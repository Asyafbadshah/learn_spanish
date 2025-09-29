import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_spanish/core/extension/extension.dart';
import '../../../core/theme/theme_color.dart';
import '../../../core/theme/theme_style.dart';
import '../../speech/view/speech.dart';

class TranslateOffline extends StatelessWidget {
  const TranslateOffline({super.key});

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

       _Box(),

          Positioned(
            top: 150,
            right: 125,
            child: InkWell(
                onTap: ()=>Get.to(()=>Speech()),
                
                child: Image.asset("images/plane.png",height: 150,))

          )

        ],
      ),
    );
  }
}
class _Box extends StatelessWidget {
  const _Box();

  @override
  Widget build(BuildContext context) {
    return    Positioned(
      bottom: 0.1,
      left: 10,
      child: SizedBox(
        height: context.screenHeight * 0.67,
        width: context.screenWidth * 0.95,
        child: Card(
          shape: cardStyle,
          elevation: 4,
          color:kWhite,
          child: SizedBox.expand(
            // 👈 force column to expand
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: context.screenHeight * 0.1),
                ElevatedButton(
                    style:buttonStyle,
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
                      color:speakerIconColor,
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
                        color:speakerIconColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      CupertinoIcons.speaker_3,
                      color:speakerIconColor,
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(height: 20),

                Text(
                  "ADJECTIVE",
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontSize: 12,
                    color: textColor,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "(colloquial) (very good)",
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontSize: 18,
                    color:seasonsIconColor,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "chevere",
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color:speakerIconColor,
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
                        color: textColor,
                      ),
                    ),
                  ],
                ),
                Text(
                  "pelicula estaba chevere",
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
