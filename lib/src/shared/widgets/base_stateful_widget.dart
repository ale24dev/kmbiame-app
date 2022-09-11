
import 'package:flutter/cupertino.dart';

/// StatefulWidget base.
abstract class BaseStatefulWidget extends StatefulWidget{
  /// Contexto en el que se creó el widget.
  BuildContext _context;

  /// Constructor de la clase.
  BaseStatefulWidget(this._context);

  BuildContext get context => _context;

  set context(BuildContext value) {
    _context = value;
  }
}