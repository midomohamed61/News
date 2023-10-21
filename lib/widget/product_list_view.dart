import 'package:flutter/material.dart';
import 'package:news/models/fake.dart';
import 'package:news/widget/product_card.dart';


class productListView extends StatelessWidget {
  productListView({super.key});

  final List<Fake> fakes =  [
    Fake(image: 'assets/Rectangle 2.png', text: 'text', titale: 'sdasdasdasdasdasdasdasdasd'),
    Fake(image: 'assets/Rectangle 2 (3).png', text: 'text', titale: 'sdasdasdasdasdasdasdasdasd'),
    Fake(image: 'assets/Rectangle 2 (3).png', text: 'text', titale: 'sdasdasdasdasdasdasdasdasd'),
    Fake(image: 'assets/Rectangle 2 (3).png', text: 'text', titale: 'sdasdasdasdasdasdasdasdasd'),
    Fake(image: 'assets/Rectangle 2 (3).png', text: 'text', titale: 'sdasdasdasdasdasdasdasdasd'),
    Fake(image: 'assets/Rectangle 2 (3).png', text: 'text', titale: 'sdasdasdasdasdasdasdasdasd'),
    Fake(image: 'assets/Rectangle 2 (3).png', text: 'text', titale: 'sdasdasdasdasdasdasdasdasd'),
    Fake(image: 'assets/Rectangle 2 (3).png', text: 'text', titale: 'tisdasdasdasdasdasdasdasdasdtale'),
    Fake(image: 'assets/Rectangle 2 (3).png', text: 'text', titale: 'sdasdasdasdasdasdasdasdasd'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 366,// نفس الطول بتاع ال categoryCard
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: fakes.length,
          itemBuilder: (context, index) {
            return product_card(
              fake: fakes[index],
            );
          }),
    );
  }
}
