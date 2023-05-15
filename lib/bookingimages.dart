import 'package:booking/bookingDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bookingimages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9C27B0),
        title: Text('images'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: screenWidth < 600 ? 2 : 4, // adjust the number of columns based on screen size
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount:6 ,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
            Get.to(BookingDetailsScreen());
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey[200],
              ),
              child: Image.network(
                'https://picsum.photos/seed/$index/300/300', // generate a random image URL using the index
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          );
        },
      ),
    );
  }
}
