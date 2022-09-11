import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmbiame/src/shared/bloc_state/base_cubit.dart';
import 'package:kmbiame/src/shared/bloc_state/base_state.dart';
import 'package:kmbiame/src/shared/widgets/intialization_error_widget.dart';
import 'package:kmbiame/src/shared/widgets/loading.widget.dart';

import '../../../resources/general_styles.dart';

/// Estado que tiene incorporada la lógica de inicialización de las vistas.
abstract class LazyScreenState<W extends StatefulWidget, TC extends BaseCubit<TS>, TS extends BaseState> extends State<W>{
  /// Cubit que maneja la logica del widget.
  TC _widgetCubit;

  /// Mensaje de cargando a mostrar cuando el widget esta sin inicializar.
  final String _loadingMessage;

  TC get widgetCubit => _widgetCubit;

  set widgetCubit(TC value) {
    _widgetCubit = value;
  }

  /// Atributo que indica si el padre del widget debe ser un Scaffold.
  bool wrapInScaffold;

  AppBar? appBarWidget;
  bool hasAppBar;

  AppBar defaultAppBar = AppBar(
    toolbarHeight: 60,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: GStyles.fontGradient,
      ),
    ),
    centerTitle: true,
    title: Text('RuedaQatar', style: GStyles.headline3.copyWith(color: Colors.white),),
  );

  /// Constructor de la clase.
  LazyScreenState(this._widgetCubit, this._loadingMessage, {this.wrapInScaffold = false, this.appBarWidget, this.hasAppBar = false});

  @override
  void initState() {
    _widgetCubit.initializeCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return createScreenWidget();
  }

  /// Método que permite crear el widget completo de la vista.
  Widget createScreenWidget(){
    Widget screenWidget;
    if (wrapInScaffold){
      screenWidget = Scaffold(
        appBar: hasAppBar ? (appBarWidget ?? defaultAppBar) : null,
        backgroundColor: Colors.white,
        body: createContentWidget(),
      );
    }
    else{
      screenWidget = createContentWidget();
    }

    return screenWidget;
  }

  /// Método que permite crear el widget asociado al contenido del widget.
  Widget createContentWidget(){
    return BlocProvider<TC>(
        create: (context) => _widgetCubit,
        child: BlocBuilder<TC, TS>(
            buildWhen: (TS previousState, TS newState){
              return previousState.baseStatus != newState.baseStatus;
            },
            builder: (context, TS newState){
              Widget screenWidget;

              if (newState.baseStatus == BaseCubitStatus.INITIALIZATION_FINISHED){
                if (newState.hasInitializationError){
                  screenWidget = InitializationErrorWidget(_widgetCubit);
                }
                else {
                  screenWidget = createSuccessfullyWidget(context);
                }
              }
              else {
                screenWidget = LoadingWidget(text: _loadingMessage);
              }

              return screenWidget;
            }
        )
    );
  }

  /// Método que permite crear el widget a mostrar cuando la inicialización del cubit fue satisfactotia.
  Widget createSuccessfullyWidget(BuildContext context);
}