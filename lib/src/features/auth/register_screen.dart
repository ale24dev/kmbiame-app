import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:kmbiame/src/shared/extensions.dart';
import 'package:kmbiame/resources/general_styles.dart';
import 'package:kmbiame/src/features/utils/auth_enum.dart';
import 'package:kmbiame/src/features/auth/login_screen.dart';
import 'package:kmbiame/src/shared/widgets/alert_dialog.dart';
import 'package:kmbiame/src/repositories/auth_repository.dart';
import 'package:kmbiame/src/shared/widgets/generic_text_field.dart';

import '../../shared/widgets/helper_auth.dart';
import '../../shared/widgets/text_logo_app.dart';
import '../../shared/widgets/text_with_border.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();

  @override
  void callBackSetState(
      TextEditingController textEditingController, AuthEnum authEnum) {
    switch (authEnum) {
      case AuthEnum.password:
        setState(() {
          password = textEditingController;
        });
        break;

      case AuthEnum.phone:
        setState(() {
          phone = textEditingController;
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
        print(name.text);

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
                              text: context.loc.register,
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
                          GenericTextField(
                              hintText: context.loc.phone,
                              icon: const Icon(Icons.phone,
                                  size: 20, color: Colors.black),
                              textEditingController: phone,
                              authEnum: AuthEnum.phone,
                              callBackSetState: callBackSetState),
                          GestureDetector(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                              child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: GStyles.colorPrimary,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black38,
                                            blurRadius: 10,
                                            spreadRadius: 4)
                                      ]),
                                  child: Padding(
                                    padding: EdgeInsets.all(16.sp),
                                    child: Text(context.loc.registerButton,
                                        style: context.textTheme.bodyText2!
                                            .copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: GStyles.fontOkine)),
                                  )),
                            ),
                            onTap: () async {
                              AuthRepository authRepository = AuthRepository();
                              if (name.text.isEmpty ||
                                  password.text.isEmpty ||
                                  phone.text.isEmpty) {
                                showDialog(
                                    context: context,
                                    builder: (context) => GenericAlertDialog(
                                        message: context.loc.emptyFields,
                                        title: context.loc.error));
                              }
                              await authRepository.register(context, name.text,
                                  password.text, phone.text);
                            },
                          )
                        ]),
                  ),
                  HelperAuth(
                      text: context.loc.haveAccount,
                      textButton: context.loc.signin,
                      functionCallback: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const LoginScreen();
                        }));
                      })
                ],
              ),
            )));
  }
}
