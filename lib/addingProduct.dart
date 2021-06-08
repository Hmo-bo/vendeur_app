import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vendeur_app/texts.dart';

class addingProduct extends StatefulWidget {
  @override
  _addingProdyctState createState() => _addingProdyctState();
}

class _addingProdyctState extends State<addingProduct> {
  @override
  File _image;
  Widget photo = Icon(Icons.add_a_photo, color: Color(0xff0F102C));
  String dropdownValue = 'One';
  List<String> categories = [
    'Pizza',
    'Burger',
    'Cake',
    'Grill',
    'Vegeterian',
    'Pates'
  ]; // Option 2
  String _selectedCategory; // Option 2
  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(
      source: ImageSource.gallery, //imageQuality: 50
    );

    setState(() {
      _image = image;
      photo = Image.file(_image);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:
         Icon(Icons.arrow_back),
        
        backgroundColor: Color(0xff0F102C),
        title: Text("Add Meal"),
        centerTitle: true,
      ),

      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xff0F102C),
                      ),
                    ),
                    width: 300,
                    child: Center(
                      child: photo,
                    ),
                  ),
                  onTap: () {
                    _imgFromGallery();
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Material(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Name",
                            labelStyle: 
                          TextStyle(color: Color(0xffB4B4B2), fontSize: 22),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Price",
                            labelStyle: 
                          TextStyle(color: Color(0xffB4B4B2), fontSize: 22),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            texts(
                              text: "Category",
                              size: 20,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            DropdownButton(
                              hint: Text(
                                  'Choose Meal Category'), // Not necessary for Option 1
                              value: _selectedCategory,
                              onChanged: (newValue) {
                                setState(() {
                                  _selectedCategory = newValue;
                                });
                              },
                              items: categories.map((Category) {
                                return DropdownMenuItem(
                                  child: new Text(Category),
                                  value: Category,
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Ingreadiants",
                            labelStyle: 
                          TextStyle(color: Color(0xffB4B4B2), fontSize: 22),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 150,
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    splashColor: Color(0xff0F102C),
                    color: Color(0xffF7901E),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.save_sharp),
                        texts(
                          text: "Save",
                          size: 25,
                          fsize: FontWeight.bold,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
