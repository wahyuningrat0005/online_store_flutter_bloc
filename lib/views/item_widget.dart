import 'package:flutter/material.dart';
import 'package:online_store_usebloc/models/product.dart';
import 'package:online_store_usebloc/views/Product_detail.dart';

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
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Hero(
              tag: product.images[0],
              child: SizedBox(
                width: 150.0,
                child: Image.network(product.images[0]),
              ),
            ),
            Text(
              "USD ${product.price}",
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.green,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                product.title,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Divider(
              height: 2,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add_shopping_cart,
                      size: 20.0,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 2.0,
                    ),
                    Text(
                      "Beli",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.remove_circle_outline,
                      size: 18.0,
                      color: Colors.green,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text("0"),
                    ),
                    Icon(
                      Icons.add_circle_outline,
                      size: 24.0,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
