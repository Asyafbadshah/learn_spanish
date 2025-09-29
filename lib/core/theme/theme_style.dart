import 'package:flutter/material.dart';
import 'package:learn_spanish/core/theme/theme_color.dart';
final ShapeBorder cardStyle = RoundedRectangleBorder(
  side: BorderSide(
    color: Colors.blue.withAlpha(18), // 0.07 opacity ≈ 18/255
    width: 6,
  ),
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  ),
);
final BoxDecoration imageContainerDecoration=BoxDecoration(
  shape: BoxShape.circle,
  border: Border(
    bottom: BorderSide(color: textColor, width: 5), // example color
    right: BorderSide(color:textColor, width: 10),
  ),
);
final ShapeBorder imageCardDecoration= RoundedRectangleBorder(
  side:  BorderSide(color: kWhite, width: 6),

  borderRadius: BorderRadius.all(
    Radius.circular(100),
  ), // circle shape
);
final ShapeBorder wordOfTheDayCardDecoration=RoundedRectangleBorder(

  borderRadius: BorderRadius.circular(
      20
  ),
);

final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  fixedSize: Size(100, 40),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
);
final ShapeBorder lessonCardStyle= RoundedRectangleBorder(

  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  ),
);
final ButtonStyle onBoardingButton=ElevatedButton.styleFrom(
  backgroundColor:speakerIconColor,
  padding: const EdgeInsets.symmetric(vertical: 16),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
);
final ButtonStyle getStartedButton=ElevatedButton.styleFrom(
  backgroundColor: speakerIconColor,
  padding: const EdgeInsets.symmetric(vertical: 16),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
);