import 'package:book_ly/core/utils/app_router.dart';
import 'package:book_ly/core/utils/assets.dart';
import 'package:book_ly/features/splash/presentation/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initSlidingAnimation();
    navigatToHome();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
            height: 100,
            width: 200,
            child: Image.asset(
              AssetsData.logo,
            )),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void navigatToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(const HomeView(),
        //     transition: Transition.fadeIn, duration: kTranstionDuration);
        GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 30));
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: const Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }
}
