import 'package:flutter/material.dart';
import 'package:kmbiame/src/features/utils/auth_enum.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GenericTextField extends StatefulWidget {
  const GenericTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.textEditingController,
    required this.callBackSetState,
    required this.authEnum,
  }) : super(key: key);

  ///Texto a mostrar en el TextField.
  final String hintText;

  ///Icono a mostrar en el TextField.
  final Icon icon;

  ///Valor introducido en  el TextField
  final TextEditingController textEditingController;

  ///Función que setea el estado del widget anterior.
  final Function callBackSetState;

  ///Tipo de textField.
  final AuthEnum authEnum;

  @override
  State<GenericTextField> createState() => _GenericTextFieldState();
}

class _GenericTextFieldState extends State<GenericTextField> {
  bool visiblePassword = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: TextFormField(
            controller: widget.textEditingController,
            //obscureText: widget.isPassword != null ? true : false,
            obscureText: widget.authEnum == AuthEnum.password && visiblePassword
                ? true
                : false,
            style: TextStyle(color: Colors.black, fontSize: 15.sp),
            decoration: InputDecoration(
                labelText: widget.hintText,
                labelStyle: const TextStyle(color: Colors.black),
                prefixIcon: widget.icon,
                suffixIcon: widget.authEnum == AuthEnum.password
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            visiblePassword = !visiblePassword;
                          });
                        },
                        icon: const Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                        ))
                    : const SizedBox.shrink(),
                hintStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
                focusedBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 1.0)),
                enabledBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.transparent, width: 1.0))),
            onChanged: (text) {
              widget.callBackSetState(
                  widget.textEditingController, widget.authEnum);
            }),
      ),
    );
  }
}
