// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:kmbiame/src/models/logic/swap_logical_model.dart';
import 'package:kmbiame/src/repositories/swap_repository.dart';
import 'package:kmbiame/src/shared/bloc_state/base_cubit.dart';
import 'package:kmbiame/src/shared/bloc_state/base_state.dart';
import 'package:kmbiame/src/shared/constants/article_type.dart';

part 'home_state.dart';

class HomeCubit extends BaseCubit<HomeState> {
  late BuildContext _context;

  /// Repository that manages requests related to trivia contests.
  final SwapRepository swapRepository;

  HomeCubit({required BuildContext context, required this.swapRepository})
      : super(HomeState(), context) {
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
        clonedState.listSwaps = await swapRepository.getAllSwaps(context);
        break;
      case 1:
        clonedState.articleType = ArticleType.food;
        clonedState.listSwaps = await swapRepository.getSwapsByArticleCategory(
            context, clonedState.articleType);
        break;
      case 2:
        clonedState.articleType = ArticleType.electronic;
        clonedState.listSwaps = await swapRepository.getSwapsByArticleCategory(
            context, clonedState.articleType);
        break;
      case 3:
        clonedState.articleType = ArticleType.money;
        clonedState.listSwaps = await swapRepository.getSwapsByArticleCategory(
            context, clonedState.articleType);
        break;
      case 4:
        clonedState.articleType = ArticleType.cloth;
        clonedState.listSwaps = await swapRepository.getSwapsByArticleCategory(
            context, clonedState.articleType);
        break;
      default:
        clonedState.articleType = ArticleType.others;
        clonedState.listSwaps = await swapRepository.getSwapsByArticleCategory(
            context, clonedState.articleType);
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
