import 'package:flutter/material.dart';
import 'dummy_data.dart';
import 'detail_page.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Destinations'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal, // Membuat daftar horizontal
          itemCount: destinations.length,
          itemBuilder: (context, index) {
            final destination = destinations[index];
            return Container(
              width: 250, // Atur lebar item agar proporsional
              margin: EdgeInsets.symmetric(horizontal: 10), // Spasi antar item
              child: Card(
                elevation: 5, // Memberikan bayangan pada kartu
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailPage(destination: destination),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        destination.imageUrl,
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover, // Memastikan gambar pas dalam kartu
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          destination.name,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          destination.location,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
