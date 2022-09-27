import 'package:flutter/material.dart';

class FlashDealsView extends StatelessWidget {
  const FlashDealsView({
    Key? key,
    required this.productName,
    required this.oldPrice,
    required this.newPrice,
    required this.image,
  }) : super(key: key);

  final String productName;
  final String oldPrice;
  final String newPrice;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 100,
      padding: const EdgeInsets.only(left: 3,top: 3,bottom: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 1, color: const Color(0xffF0F2F1)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(image,
            height: 96,
            width: 64,
            fit: BoxFit.fitWidth,),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text( productName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text( oldPrice,
                  style: const TextStyle(
                    fontSize: 12,
                    decoration: TextDecoration.lineThrough
                  ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(newPrice,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  ],
              ),
            )
        ],
      ),
    );
  }
}