import 'package:flutter/material.dart';
import 'package:news/models/fake.dart';


class product_card extends StatelessWidget {
  const product_card({super.key, required this.fake});

  final Fake fake;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            //image
            Container(
              width: 112,
                height: 80,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(image: AssetImage(fake.image)))),
            SizedBox(width: 16,),
            //titla and text
            Expanded(
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 238,
                    height: 48,
                    child: Text(
                      fake.titale,
                      style: TextStyle(
                        color: Color(0xff231F20),
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        overflow: TextOverflow.ellipsis,

                      ),
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    fake.text,
                    style: TextStyle(
                      color: Color(0xff6D6265),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,)
          ],
        ),
      ),
    );
  }
}
