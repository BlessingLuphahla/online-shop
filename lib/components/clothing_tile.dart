import 'package:flutter/material.dart';
import 'package:shop/components/full_pic.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/models/cloth.dart';

class ClothingTile extends StatefulWidget {
  Cloth cloth;
  final Cart cart;

  ClothingTile({
    super.key,
    required this.cloth,
    required this.cart,
  });

  @override
  State<ClothingTile> createState() => _ClothingTileState();
}

class _ClothingTileState extends State<ClothingTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 25,
      ),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              fit: BoxFit.cover,
              widget.cloth.imagePath,
              width: 500,
              height: 250,
            ),
          ),
          Text(
            widget.cloth.name,
            style: TextStyle(fontSize: 18, color: Colors.grey[900]),
          ),
          Text(
            widget.cloth.description,
            style: TextStyle(fontSize: 15, color: Colors.grey[600]),
          ),
          Text(
            widget.cloth.price,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 20, color: Colors.green, fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FullPic(cloth: widget.cloth),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Color.fromARGB(255, 3, 33, 116),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 3, 33, 116),
                          Color.fromARGB(220, 3, 33, 116),
                          Color.fromARGB(255, 3, 33, 116),
                        ],
                      )),
                  width: 110,
                  height: 44,
                  child: const Center(
                    child: FittedBox(
                      child: Text(
                        'Full Pic',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.cart.addItemToCart(widget.cloth);
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Color.fromARGB(255, 3, 33, 116),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 3, 33, 116),
                          Color.fromARGB(220, 3, 33, 116),
                          Color.fromARGB(255, 3, 33, 116),
                        ],
                      )),
                  width: 115,
                  height: 44,
                  child: const Center(
                    child: FittedBox(
                      child: Text(
                        'Add To Cart',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
