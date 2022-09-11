import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmbiame/resources/general_styles.dart';
import 'package:kmbiame/src/features/home/screen/widgets/card_swap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:kmbiame/src/shared/extensions.dart';
import 'package:kmbiame/src/features/home/bloc/home_cubit.dart';

import '../../../shared/state/lazy_screen_state.dart';
import '../../../shared/widgets/base_stateful_widget.dart';

/// Widget asociado a la vista del concurso.
class HomeScreen extends BaseStatefulWidget {
  final double _homeAppBarSize = 50;

  /// Constructor de la clase.
  HomeScreen(BuildContext context) : super(context);

  @override
  State<StatefulWidget> createState() => _ContestState(context);

  double get homeAppBarSize => _homeAppBarSize;
}

/// Manejador del estado de la vista ContestScreen.
class _ContestState extends LazyScreenState<HomeScreen, HomeCubit, HomeState> {
  _ContestState(BuildContext context)
      : super(HomeCubit(context), context.loc.loading);

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
                      labelStyle: const TextStyle(color: Colors.black),
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
          CardSwap(listSwaps: newState.listSwaps!),
        ],
      );
    });
  }
}
