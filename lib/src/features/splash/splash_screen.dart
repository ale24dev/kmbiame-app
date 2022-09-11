import 'package:flutter/material.dart';
import 'package:kmbiame/resources/general_styles.dart';
import 'package:kmbiame/src/features/splash/splash_controller.dart';
import 'package:kmbiame/src/shared/widgets/text_logo_app.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SplashController.checkLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* body: Stack(
        children: [
          Image.asset(Images.backgoundEarthly,
              fit: BoxFit.cover, height: 100.h),
          Center(
              child: Text(
            "Kmbiame",
            style: context.textTheme.headline1!
                .copyWith(fontSize: 40.sp, color: Colors.white.withOpacity(.8)),
          ))
        ],
      ),*/
      body: Container(
        width: 100.w,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [GStyles.colorPrimary, GStyles.colorSecondary])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextLogoApp(fontSize: 40.sp),
            SpinKitFoldingCube(
              color: Colors.white,
              size: 20.sp,
            )
          ],
        ),
        /* child: Text(
        "Kmbiame",
        style: context.textTheme.headline1!
            .copyWith(fontSize: 40.sp, color: Colors.white.withOpacity(.8)),
      )*/
      ),
    );
  }
}
