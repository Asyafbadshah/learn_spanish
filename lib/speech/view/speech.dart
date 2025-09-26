import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_spanish/core/extension/extension.dart';
import 'package:learn_spanish/word_of_the_day/view/word_of_the_day.dart';
class Speech extends StatelessWidget {
   Speech({super.key});
  final items = [
    {
      "icon": Icons.do_not_disturb_on_total_silence,
      "title": "invierno",
      "subtitle": "winter",
      "trailing":CupertinoIcons.speaker_3,
    },
    {
      "icon": Icons.do_not_disturb_on_total_silence,
      "title": "otono",
      "subtitle": "fail",
      "trailing":CupertinoIcons.speaker_3,
    },
    {
      "icon": Icons.do_not_disturb_on_total_silence,
      "title": "verano",
      "subtitle": "summer",
      "trailing": CupertinoIcons.speaker_3,
    },
    {
      "icon": Icons.do_not_disturb_on_total_silence,
      "title": "primavera",
      "subtitle": "spring",
      "trailing": CupertinoIcons.speaker_3,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/speech_background.png",
              fit: BoxFit.cover,
              // cover entire screen
            ),
          ),

          Positioned(
            top: 70,
            left: 70,
            child: Text(
              "Learn with popular\nvocabulary lists",
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
              height: context.screenHeight * 0.6,
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
                      SizedBox(height: context.screenHeight * 0.07),



                      Text(
                        "Seasons",
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontSize: 25,

                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            final item = items[index];

                            return ListTile(
                              leading: Icon(item["icon"] as IconData,
                              color: Colors.green,),
                              title: Text(item["title"] as String),
                              subtitle: Text(item["subtitle"] as String),
                              trailing: Icon(item["trailing"] as IconData,
                              color: Colors.blue,),
                              onTap: () {
                                // 👈 optional tap action
                                print("Tapped on ${item['title']}");
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),

          /// Circle Avatar
          Positioned(
              top: 115,
              right: 60,
              child: InkWell(
                  onTap: ()=>Get.to(()=>WordOfTheDay()),
                  child: Image.asset("images/surfing.png",height: 230,))

          )

        ],
      ),
    );
  }
}
