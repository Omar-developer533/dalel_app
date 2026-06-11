import 'package:dalel/core/router/app_router.dart';
import 'package:dalel/core/utls/app_color.dart';
import 'package:dalel/core/utls/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      context.go(kOnBoardingOne);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.offWhite,

      body: TweenAnimationBuilder(
        tween: AlignmentGeometryTween(
          begin: Alignment.topCenter,
          end: Alignment.center,
        ),
        duration: Duration(seconds: 2),
        builder: (context, value, child) => Align(
          alignment: value!,
          child: Text(
            'Dalel',
            style: AppStyles.stylesRegular64.copyWith(
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
