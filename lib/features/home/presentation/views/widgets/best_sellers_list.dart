import 'package:bookly_app/features/home/presentation/views/widgets/best_sellers_list_item.dart';
import 'package:flutter/material.dart';

class BestSellersList extends StatelessWidget {
  const BestSellersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const BestSellersListItem();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 25,
        );
      },
      itemCount: 10,
    );
  }
}
