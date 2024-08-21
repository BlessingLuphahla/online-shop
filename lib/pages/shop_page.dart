import 'package:flutter/material.dart';
import 'package:shop/components/cloth_info.dart';
import 'package:shop/components/clothing_tile.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/models/cloth.dart';

class ShopPage extends StatefulWidget {
  final Cart cart;
  const ShopPage({super.key, required this.cart});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.grey[100],
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Search'), Icon(Icons.search)],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              Text(
                'See All',
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ),
        const SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 42,
            itemBuilder: (_, index) {
              Cloth cloth = Cloth(
                description: ClothingData.clothingDescriptions[index],
                imagePath: 'assets/images/shein (${index + 1}).jpg',
                name: ClothingData.names[index],
                price: '\$10.00',
              );

              return ClothingTile(
                cart: widget.cart,
                cloth: cloth,
              );
            },
          ),
        ),
      ],
    );
  }
}
