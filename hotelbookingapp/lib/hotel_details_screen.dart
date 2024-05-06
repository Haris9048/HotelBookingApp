import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HotelDetailsScreen extends StatelessWidget {
  final String title;

  const HotelDetailsScreen({required this.title});

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
            // Hotel image
            Image.network(
              'https://picsum.photos/200',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            // Hotel details
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '$title Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', // Replace with actual hotel details
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
