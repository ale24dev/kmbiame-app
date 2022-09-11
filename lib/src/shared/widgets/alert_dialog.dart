import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:kmbiame/src/shared/extensions.dart';
import 'package:kmbiame/resources/general_styles.dart';

class GenericAlertDialog extends StatelessWidget {
  const GenericAlertDialog(
      {Key? key, required this.message, required this.title, this.textButton})
      : super(key: key);

  ///Mensaje que se muestra en el dialog.
  final String message;

  ///Título del dialog.
  final String title;

  ///Texto del botón del Dialog.
  final String? textButton;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          title,
          style: context.textTheme.bodyText1!.copyWith(
              fontFamily: GStyles.fontOkine,
              fontSize: 21.sp,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 189, 34, 23)),
        ),
      ),
      content: Text(
        message,
        style: TextStyle(color: Colors.black, fontSize: 16.sp),
      ),
      actions: [
        GestureDetector(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: GStyles.colorPrimary,
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.all(12.sp),
                child: Text(
                  textButton ?? context.loc.accept,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
