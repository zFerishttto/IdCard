import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildHorizontalCard();
          } else {
            return _buildVerticalCard();
          }
        }),
      ),
    );
  }
}

class _buildVerticalCard extends StatelessWidget {
  const _buildVerticalCard({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Container(
              alignment: Alignment.center,
              width: 700,
              height: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg1.jpg'),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(30)),
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/pat1.jpg'),
                      radius: 100,
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
                        Text(
                          'Pattrick',
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          'Craby Patty',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text('+62819-1120-1918'),
                        Text('email : pat.krustykrab@gmail.com'),
                      ],
                    ),
                  )),
                ],
              )),
        ));
  }
}

class _buildHorizontalCard extends StatelessWidget {
  const _buildHorizontalCard({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Container(
              alignment: Alignment.center,
              width: 500,
              height: 700,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg2.jpg'),
                    alignment: Alignment.center),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(30)),
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/pat1.jpg'),
                      radius: 100,
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: const Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        //Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Pattrick',
                          style: TextStyle(fontSize: 30),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Craby Patty',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('+62819-1120-1918'),
                            SizedBox(
                              width: 10,
                            ),
                            Text('email : pat.krustykrab@gmail.com'),
                          ],
                        )
                      ],
                    ),
                  )),
                ],
              )),
        ));
  }
}
