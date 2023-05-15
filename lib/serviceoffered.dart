import 'package:booking/basiclocation.dart';
import 'package:booking/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ServiceOffered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
                   leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          backgroundColor: Color(0xFF9C27B0),
           elevation: 0,
          // title: Text('Service Offered'),
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
              color: Color(0xFF9C27B0),
              child: Center(
                child: Text(
                  'Services Offered',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xFF9C27B0),
                ),
              ),
              child: CheckboxListTile(
                title: Text(
                  'Photography',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9C27B0),
                    fontSize: 16,
                  ),
                ),
                value: false,
                onChanged: (newValue) {},
              ),
            ),
            SizedBox(height: 10,),
                        Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xFF9C27B0),
                ),
              ),
              child: CheckboxListTile(
                title: Text(
                  'VideoGraphy',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9C27B0),
                    fontSize: 16,
                  ),
                ),
                value: false,
                onChanged: (newValue) {},
              ),
            ),
              SizedBox(height: 10,),
                        Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xFF9C27B0),
                ),
              ),
              child: CheckboxListTile(
                title: Text(
                  'Drone Photography',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9C27B0),
                    fontSize: 16,
                  ),
                ),
                value: false,
                onChanged: (newValue) {},
              ),
            ),
              SizedBox(height: 10,),
                        Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xFF9C27B0),
                ),
              ),
              child: CheckboxListTile(
                title: Text(
                  'Photo Editing',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9C27B0),
                    fontSize: 16,
                  ),
                ),
                value: false,
                onChanged: (newValue) {},
              ),
            ),
              SizedBox(height: 10,),
                        Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Color(0xFF9C27B0),
                ),
              ),
              child: CheckboxListTile(
                title: Text(
                  'Video Editing',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF9C27B0),
                    fontSize: 16,
                  ),
                ),
                value: false,
                onChanged: (newValue) {},
              ),
            ),
            SizedBox(height: 70,),
            Container(
          width: double.infinity, // Set container width to maximum
          padding: EdgeInsets.all(16.0),
          child: ElevatedButton(
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(purple), // Set the desired color
            ),
            onPressed: () {
            Get.to(BasicLocation());
            },
            child: Text('Next'),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
