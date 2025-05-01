import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizly/core/helpers/spacing.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingOptions extends StatelessWidget {
  const ShimmerLoadingOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Shimmer.fromColors(
          baseColor: ColorsManager.shimmerColorLoading,
          highlightColor: Colors.white,
          child: Container(
            width: double.infinity,
            height: 60.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              color: ColorsManager.shimmerColorLoading,
            ),
          ),
        ),
        verticalSpace(12),
        Shimmer.fromColors(
          baseColor: ColorsManager.shimmerColorLoading,
          highlightColor: Colors.white,
          child: Container(
            width: double.infinity,
            height: 60.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              color: ColorsManager.shimmerColorLoading,
            ),
          ),
        ),
        verticalSpace(12),
        Shimmer.fromColors(
          baseColor: ColorsManager.shimmerColorLoading,
          highlightColor: Colors.white,
          child: Container(
            width: double.infinity,
            height: 60.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              color: ColorsManager.shimmerColorLoading,
            ),
          ),
        ),
        verticalSpace(12),
        Shimmer.fromColors(
          baseColor: ColorsManager.shimmerColorLoading,
          highlightColor: Colors.white,
          child: Container(
            width: double.infinity,
            height: 60.h,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12.0),
              color: ColorsManager.shimmerColorLoading,
            ),
          ),
        ),
      ],
    );
  }
}
