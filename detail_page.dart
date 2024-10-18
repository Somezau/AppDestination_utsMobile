import 'package:flutter/material.dart';
import 'destination_model.dart';

class DetailPage extends StatelessWidget {
  final Destination destination;

  DetailPage({required this.destination});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(destination.name),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Menengahkan vertikal
            crossAxisAlignment:
                CrossAxisAlignment.center, // Menengahkan horizontal
            children: [
              Image.network(
                destination.imageUrl,
                width: 300, // Atur lebar gambar agar lebih rapi
                height: 200,
                fit: BoxFit.cover, // Memastikan gambar pas dalam kotak
              ),
              SizedBox(height: 20), // Spasi antara gambar dan teks
              Text(
                destination.name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center, // Menengahkan teks
              ),
              SizedBox(height: 5),
              Text(
                destination.location,
                style: TextStyle(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                destination.description,
                textAlign: TextAlign.center, // Menengahkan deskripsi
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
