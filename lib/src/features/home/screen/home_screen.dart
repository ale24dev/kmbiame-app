import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmbiame/resources/general_styles.dart';
import 'package:kmbiame/src/features/home/screen/widgets/card_swap.dart';
import 'package:kmbiame/src/repositories/swap_repository.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:kmbiame/src/shared/extensions.dart';
import 'package:kmbiame/src/features/home/bloc/home_cubit.dart';

import '../../../shared/state/lazy_screen_state.dart';
import '../../../shared/widgets/base_stateful_widget.dart';

/// Widget asociado a la vista del concurso.
class HomeScreen extends BaseStatefulWidget {
  final double _homeAppBarSize = 50;

  final double _categorySize = 60;

  late List<String> _listCategoryArticle;

  /// Constructor de la clase.
  HomeScreen(BuildContext context) : super(context) {
    _listCategoryArticle = [
      context.loc.all,
      context.loc.food,
      context.loc.electronic,
      context.loc.money,
      context.loc.cloth,
      context.loc.others
    ];
  }

  @override
  State<StatefulWidget> createState() => _ContestState(context);

  double get homeAppBarSize => _homeAppBarSize;

  double get categorySize => _categorySize;
}

/// Manejador del estado de la vista ContestScreen.
class _ContestState extends LazyScreenState<HomeScreen, HomeCubit, HomeState> {
  _ContestState(BuildContext context)
      : super(
            HomeCubit(
                context: context,
                swapRepository: context.read<SwapRepository>()),
            context.loc.loading);

  @override
  Widget createSuccessfullyWidget(BuildContext context) {
    TextEditingController searchEditingController = TextEditingController();
    return BlocBuilder<HomeCubit, HomeState>(
        builder: (context, HomeState newState) {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 1.h),
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20.sp)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextFormField(
                  controller: searchEditingController,
                  style: TextStyle(color: Colors.black, fontSize: 15.sp),
                  decoration: InputDecoration(
                      labelText: context.loc.search,
                      labelStyle: const TextStyle(color: Colors.black45),
                      prefixIcon:
                          Icon(Icons.search, color: GStyles.colorPrimary),
                      hintStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.transparent, width: 1.0)),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.transparent, width: 1.0))),
                  onChanged: (text) {}),
            ),
          ),
          SizedBox(
            height: widget.categorySize,
            child: ListView.builder(
              itemCount: widget._listCategoryArticle.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.all(14.sp),
                    child: Container(
                      height: 10.h,
                      width: 25.w,
                      decoration: BoxDecoration(
                          color: newState.categoryTypeIndex == index
                              ? GStyles.colorPrimary
                              : GStyles.colorSecondary,
                          borderRadius: BorderRadius.circular(10.sp)),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(5.sp),
                          child: Text(
                            widget._listCategoryArticle[index],
                            textAlign: TextAlign.center,
                            style: newState.categoryTypeIndex == index
                                ? context.textTheme.headline5!
                                    .copyWith(color: Colors.white)
                                : context.textTheme.headline5!,
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    context.read<HomeCubit>().changeCategory(index);
                  },
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.loc.give,
                  style: context.textTheme.headlineMedium!
                      .copyWith(color: GStyles.colorSecondary),
                ),
                Text(
                  context.loc.want,
                  style: context.textTheme.headlineMedium!
                      .copyWith(color: GStyles.colorPrimary),
                ),
              ],
            ),
          ),
          newState.listSwaps!.isNotEmpty
              ? CardSwap(listSwaps: newState.listSwaps!)
              : Expanded(child: Center(child: Text(context.loc.emptySwaps, style: context.textTheme.headline5,))),
        ],
      );
    });
  }
}
