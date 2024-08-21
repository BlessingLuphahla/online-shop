import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              alignment: Alignment.center,
              'assets/images/logo.jpg',
              height: 400,
              width: 600,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'L.I.S.H.A\'s SHEIN closet',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            '#Life is Fashion',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/home'),
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
              width: 200,
              height: 65,
              child: const Center(
                  child: Text(
                'Shop Now',
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
