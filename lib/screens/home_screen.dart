import 'package:flutter/material.dart';
import 'package:news/models/fake.dart';
import 'package:news/widget/product_list_view.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Container(
              height: 127,
              width: 430,
              decoration: BoxDecoration(
                color: Color(0xffE9EEFA),

              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 12,right:  20,left:  12,bottom:  32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'News',
                      style: TextStyle(
                        color: Color(0xff231F20),
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //distance
            SizedBox(height: 24,),
            //body
            Expanded(child: productListView()),
          ],
        ),
      ),
    );
  }
}
