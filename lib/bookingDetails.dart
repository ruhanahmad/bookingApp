import 'package:booking/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'bookingimages.dart';

class BookingDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9C27B0),
        title: Text('Booking Details'),
      ),
      body:
       Column(
        children: [
          Container(
            height: 200,
            width: 400,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey[200],
            ),
            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Booking Details',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 16),
                Text('Booking ID: 12345'),
                SizedBox(height: 8),
                Text('Booking Date: 2023-05-15'),
                SizedBox(height: 8),
                Text('Booking Time: 10:00 AM'),
              ],
            ),
          ),
          Container(
            height: 100,
            width: 200,
            child:
            Text("google map")
            //  GoogleMap(
            //   initialCameraPosition: CameraPosition(
            //     target: LatLng(37.42796133580664, -122.085749655962),
            //     zoom: 14,
            //   ),
            // ),
          ),
          SizedBox(height: 16),
          Container(
          width: double.infinity, // Set container width to maximum
          padding: EdgeInsets.all(16.0),
          child: ElevatedButton(
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(purple), // Set the desired color
            ),
            onPressed: () {
            // Get.to(ProfileScreen ());
            },
            child: Text('Contact Customer Support'),
          ),
        ),
          SizedBox(height: 16),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Container(
                  height: 30,
                  width: 300,
                  color: purple,
                 
                  child: Center(child: Text('Close Booking',style: TextStyle(color: Colors.white),)),
                ),
              ),
              SizedBox(width: 20,),
              GestureDetector(
                onTap: () {
                  Get.to(Bookingimages());
                },
                child: Container(
                  height: 30,
                  width: 150,
                  color: purple,
                 
                  child: Center(child: Text('Images',style: TextStyle(color: Colors.white),)),
                ),
              ),

            ],
          ),
        
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //    Container(
          //     height: 100,
          // width: 300, // Set container width to maximum
          // padding: EdgeInsets.all(16.0),
          // child: ElevatedButton(
          //    style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all<Color>(purple), // Set the desired color
          //   ),
          //   onPressed: () {
          //   // Get.to(ProfileScreen ());
          //   },
          //   child: Text('Close Bookimg'),
          // ),
          //       ),
          //     Container(
          // width: double.infinity, // Set container width to maximum
          // padding: EdgeInsets.all(16.0),
          // child: ElevatedButton(
          //    style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all<Color>(purple), // Set the desired color
          //   ),
          //   onPressed: () {
          //   // Get.to(ProfileScreen ());
          //   },
          //   child: Text('Iages'),
          // ),
          //       ),
          //   ],
          // ),

           Container(
          width: double.infinity, // Set container width to maximum
          padding: EdgeInsets.all(16.0),
          child: ElevatedButton(
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(purple), // Set the desired color
            ),
            onPressed: () {
            // Get.to(ProfileScreen ());
            },
            child: Text('Cancel Booking'),
          ),
        ),
        ],
      ),
    );
  }
}
