import 'package:flutter/material.dart';
import 'package:tokosayur_application_1/data.dart';
import 'package:tokosayur_application_1/product_detail.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProductDetail(
            product: product,
          );
        }));
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: product.image,
              child: SizedBox(
                width: 140,
                child: Image.asset(product.image),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'Rp ${product.price}',
              style: const TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              product.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              product.quantity,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Divider(
              height: 2,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: const [
                    Icon(
                      Icons.add_shopping_cart,
                      size: 20,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Beli",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.remove_circle_outline,
                      size: 18,
                      color: Colors.green,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text('0'),
                    ),
                    // ignore: unnecessary_const
                    const Icon(
                      Icons.add_circle_outline,
                      size: 18,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
    // ignore: prefer_const_constructors
  }
}
