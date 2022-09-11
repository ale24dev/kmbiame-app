import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.textButton, this.onTap,
  }) : super(key: key);

  ///Texto que se muestra en el botón.
  final String textButton;

  ///Callback de la acción al oprimir el botón.
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(12.sp),
          child: Text(textButton),
        ),
      ),
      onTap: () {},
    );
  }
}
