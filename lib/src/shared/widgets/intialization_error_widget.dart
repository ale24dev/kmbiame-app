import 'package:flutter/widgets.dart';
import 'package:kmbiame/src/shared/bloc_state/base_cubit.dart';
import 'package:kmbiame/src/shared/bloc_state/base_state.dart';
import 'package:kmbiame/src/shared/extensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../resources/images.dart';

/// Widget que permite mostrar el error ocurrido en la inicialización de un LazyScreen y reiniciarlo.
class InitializationErrorWidget<TC extends BaseCubit<TS>, TS extends BaseState>
    extends StatelessWidget {
  /// Cubit asociado al widget.
  final TC _widgetCubit;

  /// Constructor de la clase.
  const InitializationErrorWidget(this._widgetCubit);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Images.boxImage, width: 50.w),
              Container(
                margin: const EdgeInsets.only(left: 15, top: 15, right: 15),
                child: Text(
                  _widgetCubit.state.initializationErrorMessage,
                  style: context.textTheme.headline4!
                      .copyWith(color: context.theme.primaryColor),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Text(
                    context.loc.reload,
                  ),
                ),
                onTap: () {
                  _widgetCubit.resetCubit();
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
