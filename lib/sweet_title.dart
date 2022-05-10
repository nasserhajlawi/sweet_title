library sweet_title;

import 'package:flutter/material.dart';

/// Easily create a beautiful title with Sweet Title
///
///  Update [title] to set the title.
/// [title] is required and must not be null.
class SweetTitle extends StatelessWidget {
  const SweetTitle({
    Key? key,
    required this.title,
    this.horizontalPadding = 20.0,
    this.titleMargin = const EdgeInsets.only(bottom: 20.0),
    this.fontSize = 20.0,
  }) : super(key: key);

  /// The title to display.
  final String title;

  /// The horizontal padding to apply to the title. Defaults to 20.
  final double horizontalPadding;

  /// The margin to apply to the title. Defaults is bottom 20.
  final EdgeInsets titleMargin;

  /// The font size to apply to the title. Defaults to 20.
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

  /// Easily create a beautiful title and action button with Sweet Title
  ///
  /// [title] is required and must not be null.
  /// [buttonText] is required and must not be null.
  /// [buttonOnPressed] is required and must not be null.
  /// [buttonStyle] is required and must not be null.
  /// [buttonTextColor] is required and must not be null.
  static button({
    /// The title to display.
    required String title,

    /// Button Text.
    required String buttonText,

    /// onPress function for the button
    required void Function() buttonOnPressed,

    /// The horizontal padding to apply to the title. Defaults to 20.
    horizontalPadding = 20.0,

    /// The margin to apply to the title. Defaults is bottom 20.
    titleMargin = const EdgeInsets.only(bottom: 20.0),

    /// ElevatedButton Style
    required ButtonStyle buttonStyle,

    /// color of the text inside ElevatedButton
    required Color buttonTextColor,

    /// font size of the title. default is 20.0
    fontSize = 20.0,
  }) {
    return Container(
      margin: titleMargin,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: fontSize,
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
