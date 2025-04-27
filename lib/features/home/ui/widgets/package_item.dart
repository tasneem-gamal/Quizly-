
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizly/core/theme/colors.dart';
import 'package:quizly/core/theme/styles.dart';

class PackageItem extends StatelessWidget {
  const PackageItem({
    super.key,
    required this.image,
    this.imgWidth,
    this.imgHeight,
    required this.text,
    this.onPressed,
  });

  final String image;
  final double? imgWidth, imgHeight;
  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        width: double.infinity,
        height: 150.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: const LinearGradient(
              colors: [
                ColorsManager.mainBlue,
                Color.fromARGB(255, 118, 149, 220),
                Color.fromARGB(255, 100, 183, 191),
                Color.fromARGB(255, 109, 205, 212),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                onPressed: () {},
                icon: const Icon(
                  Icons.play_circle,
                  size: 50,
                  color: ColorsManager.customYellow,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                text,
                style: CustomTextStyles.font24WhiteSemiBold()
                    .copyWith(fontSize: 20),
              ),
            )
          ],
        ),
      ),
      Positioned(
          top: -50,
          right: -20,
          child: Image.asset(
            image,
            width: imgWidth ?? 200 ,
            height: imgHeight ?? 200,
          ))
    ]);
  }
}