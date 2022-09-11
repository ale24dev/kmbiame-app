import 'package:flutter/cupertino.dart';
import 'package:kmbiame/src/models/logic/swap_logical_model.dart';
import 'package:kmbiame/src/repositories/swap_repository.dart';
import 'package:kmbiame/src/shared/bloc_state/base_cubit.dart';
import 'package:kmbiame/src/shared/bloc_state/base_state.dart';

part 'home_state.dart';

class HomeCubit extends BaseCubit<HomeState> {
  late BuildContext _context;
  HomeCubit(BuildContext context) : super(HomeState(), context) {
    _context = context;
  }

  BuildContext get context => _context;

  @override
  Future initializeCubit() async {
    try {
      await super.initializeCubit();

      SwapRepository swapRepository = SwapRepository();
      final listSwaps = await swapRepository.getAllSwaps(context);

      HomeState clonedState = HomeState.clone(state);
      clonedState.listSwaps = listSwaps;
      clonedState.baseStatus = BaseCubitStatus.INITIALIZATION_FINISHED;
      secureEmit(clonedState);
    } catch (e) {
      HomeState clonedState = HomeState.clone(state);
      clonedState.hasInitializationError = true;
      clonedState.initializationErrorMessage = e.toString();
      clonedState.baseStatus = BaseCubitStatus.INITIALIZATION_FINISHED;
      secureEmit(clonedState);
    }
  }

  Future loadingCubit() async {
    HomeState clonedState = HomeState.clone(state);
    clonedState.baseStatus = BaseCubitStatus.LOADING;
    secureEmit(clonedState);
  }

  @override
  Future resetCubit() async {
    return await resetCubitState(HomeState());
  }
}
