import 'package:kmbiame/src/shared/bloc_state/base_cubit.dart';

/// Clase base para los estados de los cubits y los blocs.
class BaseState{
  /// Estado actual del cubit.
  BaseCubitStatus baseStatus;

  /// Atributo que controla si un cubit esta o no cerrado.
  bool isClosed;

  /// Atributo que indica si el cubit tuvo algun problema de inicializacion.
  bool hasInitializationError;

  /// Mensaje del error ocurrido durante la inicializacion del cubit.
  String initializationErrorMessage;

  /// Constructor de la clase.
  BaseState({required this.baseStatus, required this.isClosed, required this.hasInitializationError, required this.initializationErrorMessage});

  /// Constructor copia de la clase.
  BaseState.clone(BaseState stateToClone): this(baseStatus: stateToClone.baseStatus, isClosed: stateToClone.isClosed, hasInitializationError: stateToClone.hasInitializationError, initializationErrorMessage: stateToClone.initializationErrorMessage);

  /// Método que permite reiniciar el estado del estado especificado.
  static void resetState(BaseState stateToReset){
    stateToReset.baseStatus = BaseCubitStatus.LOADING;
    stateToReset.isClosed = false;
    stateToReset.hasInitializationError = false;
    stateToReset.initializationErrorMessage = '';
  }
}