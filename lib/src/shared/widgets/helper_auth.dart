import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:kmbiame/resources/general_styles.dart';

class HelperAuth extends StatelessWidget {
  const HelperAuth({
    Key? key,
    required this.text,
    required this.textButton,
    required this.functionCallback,
  }) : super(key: key);

  final String text;
  final String textButton;
  final Function functionCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1.5.h),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, color: Colors.white),
            ),
            SizedBox(width: 1.w),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textButton,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: GStyles.colorPrimary),
                ),
              ),
              onTap: () {
                functionCallback();
              },
            ),
          ],
        ),
      ),
    );
  }
}
