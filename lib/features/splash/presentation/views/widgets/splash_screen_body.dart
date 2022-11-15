import 'package:flutter/material.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> subSlidingAnimation;
  late Animation<Offset> baseSlidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    subSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 6), end: Offset.zero)
            .animate(animationController);
    baseSlidingAnimation =
        Tween<Offset>(begin: const Offset(-6, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AnimatedBuilder(
          animation: baseSlidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: baseSlidingAnimation,
              child: const Text(
                'BoOkLY',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
        AnimatedBuilder(
          animation: subSlidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: subSlidingAnimation,
              child: const Text(
                'Read Free Books',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ],
    );
  }
}
