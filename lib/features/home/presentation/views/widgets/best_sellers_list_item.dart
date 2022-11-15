import 'package:flutter/material.dart';

class BestSellersListItem extends StatelessWidget {
  const BestSellersListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 180,
      child: Row(
        children: [
          Container(
            height: 180,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/book.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'free book for reading',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'this book is useful for you if you have to improve your soft skills',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '220.0 EGP',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
