import 'package:flutter/material.dart';
import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../Widgets/AppBarWidget.dart';
import '../Widgets/DrawerWidget.dart';
import '../Widgets/ItemBottomNavBar.dart';

class ItemPage extends StatefulWidget {
  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  String? _selectedItem;
  final List<String> _dropdownItems = ['Printer 1', 'Printer 2', 'Printer 3'];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            AppBarWidget(),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.05),
              child: Image.asset(
                "images/burger.png",
                height: screenHeight * 0.2,
              ),
            ),
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: screenWidth * 0.075,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.075, bottom: screenHeight * 0.015),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: screenWidth * 0.036,
                              itemPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              onRatingUpdate: (index) {},
                            ),
                            Text(
                              "\$10",
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.015,
                          bottom: screenHeight * 0.03,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hot Burger",
                              style: TextStyle(
                                fontSize: screenWidth * 0.056,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.2,
                              padding: EdgeInsets.all(screenWidth * 0.0125),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(screenWidth * 0.025),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    CupertinoIcons.minus,
                                    color: Colors.white,
                                    size: screenWidth * 0.04,
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.032,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    CupertinoIcons.plus,
                                    color: Colors.white,
                                    size: screenWidth * 0.04,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.01,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your text here...',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                          style: TextStyle(fontSize: screenWidth * 0.04),
                          textAlign: TextAlign.justify,
                          maxLines: null, // Allows multiple lines of input
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01), // Add some space
                      Align(
                        // Align the dropdown to the left
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Align items to the left
                          children: [
                            Text(
                              'Select a Printer:', // Text indicating the purpose of the dropdown
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.005), // Add some space
                            DropdownButtonFormField<String>(
                              value: _selectedItem,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors
                                          .grey), // Set border color to grey
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: screenHeight * 0.025, horizontal: screenWidth * 0.05),
                              ),
                              items: _dropdownItems.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value == 'Select a Printer'
                                      ? null
                                      : value, // Set value to null for disabled option
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedItem = newValue;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: DrawerWidget(),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
