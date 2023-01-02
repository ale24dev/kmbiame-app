import 'package:flutter/material.dart';
import 'package:kmbiame/src/features/layout/layout_screen.dart';
import 'package:kmbiame/src/repositories/auth_repository.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:kmbiame/src/shared/extensions.dart';
import 'package:kmbiame/resources/general_styles.dart';
import 'package:kmbiame/src/features/auth/register_screen.dart';
import 'package:kmbiame/src/shared/widgets/generic_text_field.dart';

import '../../shared/widgets/alert_dialog.dart';
import '../utils/auth_enum.dart';
import '../../shared/widgets/helper_auth.dart';
import '../../shared/widgets/text_logo_app.dart';
import '../../shared/widgets/text_with_border.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void callBackSetState(
      TextEditingController textEditingController, AuthEnum authEnum) {
    switch (authEnum) {
      case AuthEnum.password:
        setState(() {
          password = textEditingController;
        });
        break;

      default:
        setState(() {
          name = textEditingController;
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 100.h,
            decoration: BoxDecoration(gradient: GStyles.fontGradient),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.h),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: TextLogoApp(fontSize: 40.sp),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  SizedBox(
                    width: 100.w,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                            child: TextWithBorder(
                              text: context.loc.signin,
                              colorOutside: GStyles.colorPrimary,
                              colorInside: GStyles.colorSecondary,
                              fontSize: 19.sp,
                            ),
                          ),
                          GenericTextField(
                              hintText: context.loc.name,
                              icon: const Icon(Icons.person,
                                  size: 20, color: Colors.black),
                              textEditingController: name,
                              authEnum: AuthEnum.name,
                              callBackSetState: callBackSetState),
                          GenericTextField(
                              hintText: context.loc.password,
                              icon: const Icon(Icons.password,
                                  size: 20, color: Colors.black),
                              textEditingController: password,
                              authEnum: AuthEnum.password,
                              callBackSetState: callBackSetState),
                          GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                              child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: GStyles.colorPrimary,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Padding(
                                    padding: EdgeInsets.all(16.sp),
                                    child: Text(context.loc.signin,
                                        style: context.textTheme.bodyText2!
                                            .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: GStyles.fontOkine)),
                                  )),
                            ),
                            onTap: () async {
                              if (name.text.isEmpty || password.text.isEmpty) {
                                showDialog(
                                    context: context,
                                    builder: (context) => GenericAlertDialog(
                                        message: context.loc.emptyFields,
                                        title: context.loc.error));
                              }
                              AuthRepository authRepository = AuthRepository();
                              await authRepository.logIn(context,
                                  username: name.text, password: password.text);
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const LayoutScreen()));
                            },
                          )
                        ]),
                  ),
                  HelperAuth(
                      text: context.loc.dontHaveAccount,
                      textButton: context.loc.register,
                      functionCallback: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const RegisterScreen();
                        }));
                      })
                ],
              ),
            )));
  }
}
