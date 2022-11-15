import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_item.dart';
import 'package:flutter/material.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const FeaturedListItem();
        },
        itemCount: 20,
      ),
    );
  }
}
