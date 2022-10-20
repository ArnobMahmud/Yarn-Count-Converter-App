import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff6d9),
      appBar: AppBar(
        backgroundColor: Color(0xfffff6d9),
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.ac_unit,
              size: 30,
              color: Colors.blueGrey[400],
            ),
            onPressed: () {},
          )
        ],
        title: Text(
          'Count Conv.',
          style: TextStyle(
              fontSize: 30,
              color: Colors.blueGrey,
              fontWeight: FontWeight.w300,
              letterSpacing: 1),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'images/seam.png',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Text(
                'In the textile industry, the yarn count is used to express how fine or coarse (or thin or thick) the yarn is. We use the English count numbering system, which is part of a larger group known as indirect counting systems.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ('/convpage'));
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xffd4bbb1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Explore",
                      style: TextStyle(
                        fontSize: 23,
                        color: Color(0xfffdfff5),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/toplvl');
            //   },
            //   child: Padding(
            //     padding: const EdgeInsets.only(
            //         top: 15, left: 25, right: 25, bottom: 15),
            //     child: Text(
            //       "Explore",
            //       style: TextStyle(
            //         fontSize: 22,
            //         color: Colors.blueGrey[600],
            //       ),
            //     ),
            //   ),
            //   style: ElevatedButton.styleFrom(
            //     primary: Colors.blueGrey[100],
            //     // side: BorderSide(color: Colors.yellow, width: 5),
            //     textStyle: const TextStyle(
            //         color: Colors.white,
            //         fontSize: 25,
            //         fontStyle: FontStyle.normal),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(25),
            //         bottomRight: Radius.circular(25),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
