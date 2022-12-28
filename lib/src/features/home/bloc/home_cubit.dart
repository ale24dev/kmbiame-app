import 'package:flutter/cupertino.dart';
import 'package:kmbiame/src/models/logic/swap_logical_model.dart';
import 'package:kmbiame/src/repositories/swap_repository.dart';
import 'package:kmbiame/src/shared/bloc_state/base_cubit.dart';
import 'package:kmbiame/src/shared/bloc_state/base_state.dart';
import 'package:kmbiame/src/shared/constants/article_type.dart';

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

  Future changeCategory(int index) async {
    HomeState clonedState = HomeState.clone(state);

    switch (index) {
      case 0:
        clonedState.articleType = ArticleType.all;
        break;
      case 1:
        clonedState.articleType = ArticleType.food;
        break;
      case 2:
        clonedState.articleType = ArticleType.electronic;
        break;
      case 3:
        clonedState.articleType = ArticleType.money;
        break;
      case 4:
        clonedState.articleType = ArticleType.cloth;
        break;
      default:
        clonedState.articleType = ArticleType.others;
        break;
    }
    clonedState.categoryTypeIndex = index;
    secureEmit(clonedState);
  }

  @override
  Future resetCubit() async {
    return await resetCubitState(HomeState());
  }
}
