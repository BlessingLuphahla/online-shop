import 'package:flutter/material.dart';
import 'package:shop/models/cloth.dart';

class FullPic extends StatelessWidget {
  Cloth cloth;
  FullPic({super.key, required this.cloth});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          Image.asset(fit: BoxFit.cover, cloth.imagePath),
          Text(
            cloth.name,
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 20,
                color: Colors.grey[600]),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            cloth.description,
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 16,
                color: Colors.grey[900]),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            cloth.price,
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 25, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
