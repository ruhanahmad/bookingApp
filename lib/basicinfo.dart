import 'package:booking/const.dart';
import 'package:booking/serviceoffered.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class BasicInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF9C27B0),
          title: Text('Basic Info'),
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
  color: purple,
  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55),bottomRight:  Radius.circular(55)
  )
              ),
            
              child: Center(
                child: Text(
                  'Basic Info',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 44,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
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
                      hintText: 'Name',
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
                      hintText: 'Email ID',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            CheckboxListTile(
              title: Text('Company'),
              value: false,
              onChanged: (bool? value) {
                // Handle checkbox value change here
              },
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
            Get.to(ServiceOffered());
            },
            child: Text('Next'),
          ),
        ),
          ],
        ),
      );
    
  }
}
