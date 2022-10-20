import 'package:count_conv_app/widget/segment.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  /* int ne = 1;

  double NeToTex(ne) {
    double tex;
    if (ne < 1) {
      return 0;
    }
    if (ne > 590) {
      return 0;
    }
    tex = 590.5 / ne;
    return tex;
  }

  double NeToNm(ne) {
    double nm;
    if (ne < 1) {
      return 0;
    }
    nm = ne / 0.59;
    return nm;
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe0d7c6),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blueGrey[900],
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        backgroundColor: Color(0xffe0d7c6),
        elevation: 0.0,
        title: Text(
          'Calculation Page',
          style: TextStyle(
            fontSize: 30,
            color: Colors.teal[900],
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              SegmentChoice(
                title: 'Ne to Tex',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ), SegmentChoice(
                title: 'Ne to Denier',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ), SegmentChoice(
                title: 'Ne to spyndle/lbs',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ), SegmentChoice(
                title: 'Ne to Tex',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ), SegmentChoice(
                title: 'Ne to Tex',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ), SegmentChoice(
                title: 'Ne to Tex',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ), SegmentChoice(
                title: 'Ne to Tex',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ), SegmentChoice(
                title: 'Ne to Tex',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ), SegmentChoice(
                title: 'Ne to Tex',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ), SegmentChoice(
                title: 'Ne to Tex',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ), SegmentChoice(
                title: 'Ne to Tex',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ), SegmentChoice(
                title: 'Ne to Tex',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ), SegmentChoice(
                title: 'Ne to Tex',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ),
              SegmentChoice(
                title: 'Ne to Tex',
                subTitle: 'Indirect ot Direct count',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*
   Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ne++;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Increment",
                        style:
                            TextStyle(fontSize: 24, color: Colors.brown[100]),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown[600],
                      // side: BorderSide(color: Colors.yellow, width: 5),
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          ne--;
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Decrement",
                        style:
                            TextStyle(fontSize: 24, color: Colors.brown[100]),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown[600],
                      // side: BorderSide(color: Colors.yellow, width: 5),
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              CustomCountContainer(
                data: 'Ne : \n${ne.toString()}',
                colour: Colors.green[300],
              ),
              CustomCountContainer(
                data: 'Tex : \n${NeToTex(ne).toStringAsFixed(2)}',
                colour: Colors.teal[300],
              ),
              CustomCountContainer(
                data: 'Nm : \n${NeToNm(ne).toStringAsFixed(2)}',
                colour: Colors.purple[300],
              ),
 */