import 'package:flutter/material.dart';
import 'package:kmbiame/src/shared/extensions.dart';
import 'package:kmbiame/src/shared/widgets/primary_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../features/splash/splash_controller.dart';

class ErrorDialog extends StatelessWidget {
  String errorText;
  String? buttonText;
  String? headerText;
  void Function()? onTap;
  bool noHeader;

  ErrorDialog(
      {Key? key,
      required this.errorText,
      this.buttonText,
      this.onTap,
      this.headerText,
      this.noHeader = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.fromLTRB(5.w, 8.w, 5.w, 8.w),
        height: 80.w,
        width: 80.w,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (noHeader == false)
                Text(
                  headerText ?? context.loc.error,
                  style: context.textTheme.headline3!
                      .copyWith(color: context.theme.primaryColor),
                ),
              Expanded(
                  child: Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 10.sp, 0, 10.sp),
                  child: Text(
                    errorText,
                    style: context.textTheme.headline4!
                        .copyWith(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              )),
              PrimaryButton(
                  textButton: buttonText ?? context.loc.exit,
                  onTap: onTap ?? SplashController.exitApp())
            ],
          ),
        ),
      ),
    );
  }
}
