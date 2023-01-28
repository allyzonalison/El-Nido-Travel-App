import 'dart:convert';
import 'package:flutter/material.dart';

class TourB extends StatefulWidget {
  const TourB({Key? key}) : super(key: key);

  @override
  State<TourB> createState() => _TourBState();
}

class _TourBState extends State<TourB> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //WIDGET 1 INSIDE THE COLUMN
              Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 300, 0),

                //INKWELL BACK TO MAIN CHOOSE TOUR
                child: InkWell(
                  child: Icon(Icons.arrow_back_ios),
                  onTap: () {
                    Navigator.pop(context, true);
                  },
                ),
              ),

              //SECOND WIDGET
              const SizedBox(height: 8),

              //THIRD WIDGET inside the column
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "TOUR B",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              //FOURTH WIDGET
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Destinations",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
              ),

              //BUTTON WIDGET
              ButtonBar(
                buttonMinWidth: 300,
                buttonHeight: 50,
                alignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    highlightColor: const Color(0xFF6200EE),
                    textColor: const Color(0xFF6200EE),
                    color: Colors.white,
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Text('ADD TO CART'),
                  ),
                ],
              ),

              //END OF COLUMN WIDGET HERE
            ],
          ),
        ),
      ),
    );
  }
}
