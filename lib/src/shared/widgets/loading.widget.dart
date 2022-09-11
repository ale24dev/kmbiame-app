import 'package:flutter/material.dart';
import 'package:kmbiame/src/shared/extensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../resources/animations.dart';

/// Widget asociado al cargando de la aplicacion.
class LoadingWidget extends StatefulWidget {
  /// Texto asociado al cargando.
  String? text;

  LoadingWidget({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoadingState();
  }
}

/// Manejador del estado del widget de cargando de la aplicacion.
class _LoadingState extends State<LoadingWidget> {
  /// Imagen utilizada en el widget de cargando.
  late Image _loadingImage;

  /// Texto real del cargando.
  String? _lazyText;

  /// Método que garantiza que el texto del cargando se cargue luego de haberse
  /// cargado la imagen.
  void _setLazyText() {
    setState(() {
      _lazyText = widget.text;
    });
  }

  @override
  void initState() {
    _loadingImage = Image.asset(
      Animations.loading,
      width: 50.w,
    );
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _setLazyText();
      await _loadingImage.image.evict();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        // crossAxisAlignment: CrossAxisAlignment.,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 1.h,
          ),
          _loadingImage,
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                _lazyText ?? '',
                style: context.textTheme.headline3!
                    .copyWith(color: context.theme.primaryColor),
                textAlign: TextAlign.center,
              ))
        ]);
  }

  @override
  void dispose() {
    _loadingImage.image.evict();
    super.dispose();
  }
}
