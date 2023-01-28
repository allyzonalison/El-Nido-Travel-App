import 'package:flutter/material.dart';
import 'hotel.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SDDoublewithBalcony extends StatefulWidget {
  const SDDoublewithBalcony({Key? key}) : super(key: key);

  @override
  State<SDDoublewithBalcony> createState() => _SDDoublewithBalconyState();
}

class _SDDoublewithBalconyState extends State<SDDoublewithBalcony> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/elnidobg2.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.zero,
                    child: Row(
                      children: <Widget>[
                        const SizedBox(
                          height: 150,
                        ),
                        //first widget of stack
                        const Spacer(),

                        //INKWELL BACK TO THE HOTEL MAIN
                        InkWell(
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.pop(context, true);
                          },
                        ),

                        const Spacer(),
                        //second widget of stack
                        const SizedBox(
                          width: 300,
                        ),
                        const Spacer(),
                        InkWell(
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => hotel()),
                            );
                          },
                        ),
                        const Spacer(),
                      ],
                    ),
                  ), //CAROUSEL STARTS HERE
                  ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: <Widget>[
                      CarouselSlider(
                        items: [
                          //first image try
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage(
                                    'images/StandardDouble.jpg'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),

                          //2nd image try
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage(
                                    'images/StandardDouble.jpg'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),

                          //3rd image try
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage(
                                    'images/StandardDouble.jpg'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ],

                        //slider container properties
                        options: CarouselOptions(
                          height: 470.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 600),
                          viewportFraction: 0.8,
                        ),
                      ),
                      //END OF CAROUSEL
                    ],
                  ),

                  //ROOM NAME HERE
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "STANDARD DOUBLE WITH BALCONY",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                  ),

                  //MGA SMALL ICONS
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Icon(
                        Icons.bed,
                        color: Color(0xFF229440),
                        size: 30.0,
                      ),
                      Text("1 Bed"),
                      SizedBox(width: 50),
                      Icon(
                        Icons.shower_rounded,
                        color: Color(0xFF229440),
                        size: 30.0,
                      ),
                      Text("Bathroom"),
                      SizedBox(width: 50),
                      Icon(
                        Icons.crop_square_outlined,
                        color: Color(0xFF229440),
                        size: 30.0,
                      ),
                      Text("50 sq"),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //PARAGRAPH WIDGET HERE
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                    child: RichText(
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        text: 'It is a type of single room, which has ',
                        style: TextStyle(color: Colors.black, fontSize: 18.0),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'a king-size bed, or as two beds  — this room is decorated with two queen-size beds.  A standard room includes all kinds of basic facilities such as a table, chair and desk,',
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.green,
                        elevation: 5,
                        hoverColor: Colors.yellow,
                        child: const Text('Add to Cart'),
                        onPressed: () {}),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
