import 'package:bookly_app/features/home/presentation/views/widgets/best_sellers_list.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const FeaturedList(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 35,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Best Sellers',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(
                  child: BestSellersList(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
