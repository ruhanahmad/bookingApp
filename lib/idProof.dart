import 'dart:io';

import 'package:booking/const.dart';
import 'package:booking/portfolio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';




class IDProofScreen extends StatefulWidget {
  @override
  _IDProofScreenState createState() => _IDProofScreenState();
}

class _IDProofScreenState extends State<IDProofScreen> {
  String selectedProofType = 'Passport';
  ImageProvider? capturedImage;
File? _imageFile;
File? _imageFiles;
  final ImagePicker _imagePicker = ImagePicker();

  void _captureImage() async {
       final pickedFile = await ImagePicker().getImage(
                  source: ImageSource.gallery,
                  imageQuality: 50,
                );
                if (pickedFile != null) {
                  setState(() {
                    _imageFile = File(pickedFile.path);
                  });
                }
  }
    void _captureImageTwo() async {
       final pickedFile = await ImagePicker().getImage(
                  source: ImageSource.gallery,
                  imageQuality: 50,
                );
                if (pickedFile != null) {
                  setState(() {
                    _imageFiles = File(pickedFile.path);
                  });
                }
  }

  void _resetImage() {
    setState(() {
      capturedImage = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: purple,
        title: Text('ID Proof Capture'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(
              decoration: BoxDecoration(
                 border: Border.all(
                  width: 3,
                color: purple,
              ),
               borderRadius: BorderRadius.circular(20),
              ),
              child: DropdownButton<String>(
                value: selectedProofType,
                onChanged: (value) {
                  setState(() {
                    selectedProofType = value!;
                  });
                },
                items: [
                  DropdownMenuItem<String>(
                    value: 'Passport',
                    child: Text('Passport'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Driving License',
                    child: Text('Driving License'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'ID Card',
                    child: Text('ID Card'),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          _imageFile != null
              ? Image.file(_imageFile!)
              : Container(
                  height: 100,
                  child: ElevatedButton(
                      style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(purple), // Set the desired color
            ),
                    onPressed: _captureImage,
                    child: Text('Front Image'),
                  ),
                ),
                  SizedBox(height: 20),
          _imageFile != null
              ? Image.file(_imageFile!)
              : Container(
                  height: 100,
                  child: ElevatedButton(
                      style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(purple), // Set the desired color
            ),
                    onPressed: _captureImage,
                    child: Text('Back Image'),
                  ),
                ),
          SizedBox(height: 20),
          capturedImage != null
              ? ElevatedButton(
                  onPressed: _resetImage,
                  child: Text('Reset'),
                )
              : SizedBox(),
               SizedBox(height: 70,),
            Container(
          width: double.infinity, // Set container width to maximum
          padding: EdgeInsets.all(16.0),
          child: ElevatedButton(
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(purple), // Set the desired color
            ),
            onPressed: () {
            Get.to(PortfolioScreen());
            },
            child: Text('Next'),
          ),
        ),
        ],
      ),
    );
  }
}
