import 'package:flutter/material.dart';
import 'package:learn_spanish/core/theme/theme_color.dart';

class ClickableSteps extends StatefulWidget {
  const ClickableSteps({super.key});

  @override
  _ClickableStepsState createState() => _ClickableStepsState();
}

class _ClickableStepsState extends State<ClickableSteps> {
  int selectedStep = 1; // default selected

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          buildStep(1, "0-20", "20 questions"),
          buildStep(2, "21-100", "18 questions"),
          buildStep(3, "Cardinal Numbers", "16 questions"),
          buildStep(4, "Comprehensive Review 1", "10 questions"),
        ],

    );
  }

  Widget buildStep(int stepNumber, String title, String subtitle) {
    bool isActive = selectedStep == stepNumber;

    return InkWell(
      onTap: () {
        setState(() {
          selectedStep = stepNumber;
        });
      },
      child: ListTile(
        leading: Icon(
          isActive ? Icons.radio_button_checked : Icons.radio_button_unchecked,
          color: isActive ? speakerIconColor : textColor,
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }
}
