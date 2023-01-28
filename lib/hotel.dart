import 'package:flutter/material.dart';
import 'standard_double.dart';
import 'sddouble_balcony.dart';

class hotel extends StatelessWidget {
  const hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 60, 20, 0),
              child: Text(
                "Choose Your Room",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),

            //FIRST CARD TRY
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                            builder: (_) => StandardDouble(),
                          ),
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Stack(
                            children: [
                              Image.asset('images/StandardDouble.jpg'),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40.0),
                                  child: Container(
                                    height: 40.0,
                                    width: double.infinity,
                                    color: Colors.white.withOpacity(0.6),
                                    child: const Center(
                                      child: Text(
                                        "Standard Double Room",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(
                                  Icons.bed,
                                  color: Color(0xFF229440),
                                  size: 30.0,
                                ),
                                Text("Bed"),
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
                          )
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //SECOND CARD
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(
                          builder: (_) => SDDoublewithBalcony(),
                        ),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: [
                            Image.asset('images/SDwithBalcony.jpeg'),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Container(
                                  height: 40.0,
                                  width: double.infinity,
                                  color: Colors.white.withOpacity(0.6),
                                  child: const Center(
                                    child: Text(
                                      "Standard Double with Balcony",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.bed,
                                color: Color(0xFF229440),
                                size: 30.0,
                              ),
                              Text("Bed"),
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
                        )
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
              ),
            ),

            //THIRD CARD
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: [
                            Image.asset('images/SDDeluxe.jpeg'),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Container(
                                  height: 40.0,
                                  width: double.infinity,
                                  color: Colors.white.withOpacity(0.6),
                                  child: const Center(
                                    child: Text(
                                      "Standard Deluxe Room",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.bed,
                                color: Color(0xFF229440),
                                size: 30.0,
                              ),
                              Text("Bed"),
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
                        )
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
              ),
            ),

            //FOURTH CARD
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: [
                            Image.asset('images/twin.jpeg'),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Container(
                                  height: 40.0,
                                  width: double.infinity,
                                  color: Colors.white.withOpacity(0.6),
                                  child: const Center(
                                    child: Text(
                                      "Twin Room",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.bed,
                                color: Color(0xFF229440),
                                size: 30.0,
                              ),
                              Text("Bed"),
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
                        )
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
              ),
            ),

            //Triple Room
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: [
                            Image.asset('images/triple.jpeg'),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Container(
                                  height: 40.0,
                                  width: double.infinity,
                                  color: Colors.white.withOpacity(0.6),
                                  child: const Center(
                                    child: Text(
                                      "Triple Room",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.bed,
                                color: Color(0xFF229440),
                                size: 30.0,
                              ),
                              Text("Bed"),
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
                        )
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
              ),
            ),

            //Quadroom Room
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: [
                            Image.asset('images/quadroom.jpeg'),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Container(
                                  height: 40.0,
                                  width: double.infinity,
                                  color: Colors.white.withOpacity(0.6),
                                  child: const Center(
                                    child: Text(
                                      "Quadroom",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.bed,
                                color: Color(0xFF229440),
                                size: 30.0,
                              ),
                              Text("Bed"),
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
                        )
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
              ),
            ),

            //Family Room
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: [
                            Image.asset('images/quadroom.jpeg'),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Container(
                                  height: 40.0,
                                  width: double.infinity,
                                  color: Colors.white.withOpacity(0.6),
                                  child: const Center(
                                    child: Text(
                                      "Family Room",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Icon(
                                Icons.bed,
                                color: Color(0xFF229440),
                                size: 30.0,
                              ),
                              Text("Bed"),
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
                        )
                      ],
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
