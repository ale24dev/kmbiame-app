import 'package:flutter/material.dart';
import 'package:kmbiame/src/shared/extensions.dart';

import '../../../resources/general_styles.dart';

class TextLogoApp extends StatelessWidget {
  const TextLogoApp({
    Key? key,
    required this.fontSize,
  }) : super(key: key);

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(style: context.textTheme.bodyText1, children: [
        TextSpan(
            text: "K'",
            style:
                TextStyle(color: GStyles.colorSecondary, fontSize: fontSize)),
        TextSpan(
            text: "mbiame",
            style: TextStyle(color: GStyles.colorPrimary, fontSize: fontSize)),
      ]),
      textAlign: TextAlign.center,
    );
  }
}
