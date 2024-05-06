import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListingDetailsScreen extends StatelessWidget {
  final String title;

  const ListingDetailsScreen({required this.title});

  // Function to launch a URL
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Listing image
            Image.network(
              'https://picsum.photos/200',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            // Listing details
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Details for $title', // Replace with actual listing details
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            // Combined button for View Price and Book Now
            ElevatedButton(
              onPressed: () {
                // Replace this URL with your desired link
                _launchURL('https://example.com');
              },
              child: Text('View Price & Book Now'),
            ),
          ],
        ),
      ),
    );
  }
}
