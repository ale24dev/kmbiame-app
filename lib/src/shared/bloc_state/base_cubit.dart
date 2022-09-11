
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmbiame/src/shared/bloc_state/base_state.dart';


import '../app_info.dart';

/// Estados por lo que puede transitar un BaseCubit.
enum BaseCubitStatus{
  LOADING, INITIALIZATION_FINISHED
}

/// Clase base para los cubits de la aplicacion.
abstract class BaseCubit<State extends BaseState> extends Cubit<State>{
  /// Información común de la app.
  AppInfo? _appInfo;

  AppInfo? get appInfo => _appInfo;

  set appInfo(AppInfo? value) {
    _appInfo = value;
  }

  /// Contexto en el cual se creo el cubit.
  final BuildContext _context;

  /// Constructor de la clase.
  BaseCubit(State initialState, this._context) : super(initialState);

  /// Funcion que deben implementar las clases hijas para inicializar el cubit.
  Future initializeCubit() async{
    _appInfo = await AppInfo.getInstace(_context);
  }

  /// Método que permite reiniciar el estado del cubit.
  Future resetCubitState(State reinitState) async{
    secureEmit(reinitState);
    await initializeCubit();
  }

  /// Método que permite reiniciar un cubit.
  Future resetCubit();

  /// Método que permite emitir una actualización de estado segura, validando que
  /// que el cubit no haya sido cerrado previamente.
  void secureEmit(State newState){
    if (!state.isClosed) {
      emit(newState);
    }
  }

  @override
  Future<void> close() {
    state.isClosed = true;
    return super.close();
  }
}