library sweet_title;

import 'package:flutter/material.dart';

class SweetTitle extends StatelessWidget {
  const SweetTitle({
    Key? key,
    required this.title,
    this.horizontalPadding = 20.0,
    this.titleMargin = const EdgeInsets.only(bottom: 20.0),
    this.buttonStyle = const TextStyle(fontSize: 16.0),
    this.fontSize = 20.0,
  }) : super(key: key);
  final String title;
  final double horizontalPadding;
  final EdgeInsets titleMargin;
  final TextStyle buttonStyle;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: titleMargin,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static button({
    required String title,
    required String buttonText,
    required void Function() buttonOnPressed,
    horizontalPadding = 20.0,
    titleMargin = const EdgeInsets.only(bottom: 20.0),
    required ButtonStyle buttonStyle,
    required Color buttonTextColor,
  }) {
    return Container(
      margin: titleMargin,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            style: buttonStyle,
            onPressed: buttonOnPressed,
            child: Text(
              buttonText,
              style: TextStyle(
                color: buttonTextColor,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
