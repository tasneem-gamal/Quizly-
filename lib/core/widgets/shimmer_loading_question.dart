import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingQuestion extends StatelessWidget {
  const ShimmerLoadingQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Shimmer.fromColors(
                baseColor: ColorsManager.shimmerColorLoading,
                highlightColor: ColorsManager.shimmerHighlight,
                child: Container(
                  width: 60.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: ColorsManager.shimmerColorLoading,
                  ),
                ),
              ),
              verticalSpace(10),
              Shimmer.fromColors(
                baseColor: ColorsManager.shimmerColorLoading,
                highlightColor: Colors.white,
                child: Container(
                  width: double.infinity,
                  height: 20.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: ColorsManager.shimmerColorLoading,
                  ),
                ),
              ),
            ],
          ),
    );
  }
}