import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoadingOptions extends StatelessWidget {
  const ShimmerLoadingOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(4, (_) => const BuildShimmerOption()),
    );
  }
}

class BuildShimmerOption extends StatelessWidget {
  const BuildShimmerOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Shimmer.fromColors(
        baseColor: ColorsManager.shimmerColorLoading,
        highlightColor: ColorsManager.shimmerHighlight,
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
    );
  }
}
