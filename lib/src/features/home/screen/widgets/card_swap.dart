import 'package:flutter/material.dart';
import 'package:kmbiame/src/features/home/screen/widgets/info_swap.dart';
import 'package:kmbiame/src/shared/extensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:kmbiame/src/models/logic/swap_logical_model.dart';

import '../../../../../resources/general_styles.dart';

class CardSwap extends StatelessWidget {
  const CardSwap({Key? key, required this.listSwaps}) : super(key: key);

  final List<SwapLogicalModel> listSwaps;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: listSwaps.length,
          itemBuilder: (context, index) {
            SwapLogicalModel swapLogicalModel = listSwaps[index];
            return InkWell(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                child: Column(
                  children: [
                    swapLogicalModel.swap!.date
                                .compareTo(listSwaps.first.swap!.date) ==
                            0
                        ? Text(
                            swapLogicalModel.swap!.date.toIso8601String().toString())
                        : const SizedBox.shrink(),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Padding(
                        padding: EdgeInsets.all(12.sp),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                  swapLogicalModel.articles!.give!.name
                                      .toString(),
                                  style: context.textTheme.headline5!
                                      .copyWith(fontSize: 15.sp)),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(Icons.arrow_forward,
                                      color: GStyles.colorPrimary, size: 17.sp),
                                  Icon(Icons.arrow_back,
                                      color: GStyles.colorSecondary,
                                      size: 17.sp),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Text(
                                textAlign: TextAlign.end,
                                swapLogicalModel.articles!.obtain!.name
                                    .toString(),
                                style: context.textTheme.headline5!
                                    .copyWith(fontSize: 15.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) {
                  return InfoSwap(swapLogicalModel: swapLogicalModel);
                })));
              },
            );
          }),
    );
  }
}
