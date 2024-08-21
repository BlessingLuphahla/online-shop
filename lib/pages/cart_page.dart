import 'package:flutter/material.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/models/cloth.dart';

class CartPage extends StatefulWidget {
  final Cart cart;
  const CartPage({super.key, required this.cart});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: widget.cart.userCart.length,
            itemBuilder: (_, index) {
              Cloth cloth = widget.cart.userCart[index];

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
                        cloth.imagePath,
                        width: 500,
                        height: 250,
                      ),
                    ),
                    Text(
                      cloth.name,
                      style: TextStyle(fontSize: 18, color: Colors.grey[900]),
                    ),
                    Text(
                      cloth.description,
                      style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                    ),
                    Text(
                      cloth.price,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.cart.removeItemFromCart(cloth);
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromARGB(255, 3, 33, 116),
                                    Color.fromARGB(220, 3, 33, 116),
                                    Color.fromARGB(255, 3, 33, 116),
                                  ],
                                )),
                            width: 150,
                            height: 44,
                            child: const Center(
                              child: Text(
                                'Remove From Cart',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
