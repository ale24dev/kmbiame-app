import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:kmbiame/src/shared/extensions.dart';
import 'package:kmbiame/src/models/logic/swap_logical_model.dart';

import '../../../../../resources/general_styles.dart';
import '../../../../shared/utils_function.dart';

class InfoSwap extends StatelessWidget {
  const InfoSwap({Key? key, required this.swapLogicalModel}) : super(key: key);

  final SwapLogicalModel swapLogicalModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: context.theme.iconTheme.color),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          SizedBox(height: 20.sp),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    swapLogicalModel.articles!.give!.name!,
                    style:
                        context.textTheme.headline5!.copyWith(fontSize: 18.sp),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(Icons.arrow_forward,
                          color: GStyles.colorPrimary, size: 17.sp),
                      Icon(Icons.arrow_back,
                          color: GStyles.colorSecondary, size: 17.sp),
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    textAlign: TextAlign.right,
                    swapLogicalModel.articles!.obtain!.name!,
                    style:
                        context.textTheme.headline5!.copyWith(fontSize: 18.sp),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
            child: Row(
              children: [
                /*Text(
                    "${UtilsFunction.getDateByPosition(context, swapLogicalModel.swap!.date.weekday)}, ",
                    style: const TextStyle(fontWeight: FontWeight.bold)),*/
                Text(
                    UtilsFunction.getRawDateByDate(
                        context, swapLogicalModel.swap!.date),
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.sp),
                    color: Colors.grey.shade100),
                child: Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: Text(
                      swapLogicalModel.swap!.description ?? "No description"),
                )),
          )
        ],
      ),
    );
  }
}
