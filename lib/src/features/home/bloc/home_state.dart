part of 'home_cubit.dart';

class HomeState extends BaseState {
  List<SwapLogicalModel>? listSwaps;
  ArticleType articleType;
  int categoryTypeIndex;
  
  HomeState({
    this.listSwaps,
    this.articleType = ArticleType.all,
    this.categoryTypeIndex = 0,
    BaseCubitStatus status = BaseCubitStatus.LOADING,
    bool isClosed = false,
    bool hasInitializationError = false,
    String initializationErrorMessage = '',
    bool isFirstInit = true,
  }) : super(
            baseStatus: status,
            isClosed: isClosed,
            hasInitializationError: hasInitializationError,
            initializationErrorMessage: initializationErrorMessage);

  HomeState.clone(HomeState stateToCopy)
      : this(
          listSwaps: stateToCopy.listSwaps,
          status: stateToCopy.baseStatus,
          isClosed: stateToCopy.isClosed,
          hasInitializationError: stateToCopy.hasInitializationError,
          initializationErrorMessage: stateToCopy.initializationErrorMessage,
        );

        
}
