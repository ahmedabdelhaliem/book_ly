import 'package:flutter/material.dart';

class CusttomAppbarDetails extends StatelessWidget {
  const CusttomAppbarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          const Spacer(),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
    );
  }
}
