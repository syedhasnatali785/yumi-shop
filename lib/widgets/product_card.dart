import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yumishop/screens/product_detail/product_detail_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailScreen(ptitle: 'Summer Puffer Jacket Malo', pimage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4dvoedMGH7tnfOYcJttDdz38EWC0sv47-OA&s', price: '25', tags: 'jacket', description: 'Buy Jackets for men in best quality in all Colors & Styles from Uniworth. Browse our Jackets collection 2024 in bomber, puffer style.', rating: '4.6',)));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Image.network(
                      'https://img.drz.lazcdn.com/static/pk/p/6dbdc7cc7c8f2e5e4b1141d3bc32aa51.jpg_720x720q80.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),

                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        "limited edition",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),

                  const Positioned(
                    top: 8,
                    right: 8,
                    child: Icon(
                      FontAwesomeIcons.heart,
                      size: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "tweed Waist Coat",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "Rs. 29",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
