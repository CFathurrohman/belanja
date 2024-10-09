import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:go_router/go_router.dart';
import 'package:belanja/widgets/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Sugar',
        price: 5000,
        imageUrl: 'assets/images/sugar.png',
        stock: 50,
        rating: 4.2,
      ),
      Item(
        name: 'Salt',
        price: 2000,
        imageUrl: 'assets/images/salt.png',
        stock: 100,
        rating: 4.0,
      ),
      Item(
        name: 'Onion',
        price: 20000,
        imageUrl: 'assets/images/onion.png',
        stock: 200,
        rating: 4.7,
      ),
      Item(
        name: 'Tomato',
        price: 3000,
        imageUrl: 'assets/images/tomato.png',
        stock: 139,
        rating: 4.6,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return GestureDetector(
                    onTap: () {
                      context.go('/item', extra: item);
                    },  
                    child: Card(
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset(
                              item.imageUrl,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              item.name,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('Price: Rp. ${item.price}'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text('Stock: ${item.stock}'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.star, color: Colors.red, size: 16),
                                Text('${item.rating}'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Footer(), // Add the footer here
        ],
      ),
    );
  }
}
