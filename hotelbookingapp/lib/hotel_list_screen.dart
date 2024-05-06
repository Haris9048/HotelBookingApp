import 'package:flutter/material.dart';
import 'hotel_details_screen.dart';
import 'listing_details_screen.dart';
import 'hotel_item.dart';
import 'listing_item.dart';

class HotelListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotels Booking App'), // Set the title of the app bar
        backgroundColor: Color(
            0xffa49f9f), // Set the background color of the app bar to white
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Image with Text
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hotels at the Cheapest Rates. BOOK NOW!',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Image.network(
                    'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Top Pick Hotels',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GestureDetector(
              onHorizontalDragUpdate: (details) {},
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: AlwaysScrollableScrollPhysics(),
                child: Row(
                  children: [
                    SizedBox(width: 16.0),
                    HotelItem(
                      title: 'Hotel 1',
                      imageUrl: 'https://picsum.photos/200',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HotelDetailsScreen(title: 'Hotel 1')),
                        );
                      },
                    ),
                    SizedBox(width: 16.0),
                    HotelItem(
                      title: 'Hotel 2',
                      imageUrl: 'https://picsum.photos/200',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HotelDetailsScreen(title: 'Hotel 2')),
                        );
                      },
                    ),
                    SizedBox(width: 16.0),
                    HotelItem(
                      title: 'Hotel 3',
                      imageUrl: 'https://picsum.photos/200',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HotelDetailsScreen(title: 'Hotel 3')),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.0),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ListingDetailsScreen(title: 'Hotel ${index + 1}')),
                  );
                },
                child: ListingItem(
                  title: 'Hotel ${index + 1}',
                  imageUrl: 'https://picsum.photos/200',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
