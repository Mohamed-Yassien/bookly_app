import 'package:flutter/material.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Text(
          'BoOkLY',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'Read Free Books',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
