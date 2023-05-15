import 'package:booking/const.dart';
import 'package:booking/idProof.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BasicLocation extends StatelessWidget {
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
                  'Base Location',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
                Column(
              children: [
                Container(
                   decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF9C27B0),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            margin: EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Area Pincode',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4.0),
                Container(
                   decoration: BoxDecoration(
                border: Border.all(
                  color: purple,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              margin: EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Area location',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
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
            Get.to(IDProofScreen());
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
