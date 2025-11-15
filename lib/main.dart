import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      title: 'Containers',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter1 = 0;
  int counter2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.orange,
        title: Text(
          'Points Counter',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text('Team A', style: TextStyle(fontSize: 45)),
                    Text(
                      '$counter1',
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.all(10.0),
                      child: ElevatedButton(
                        onPressed: () => setState(() => counter1++),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(200, 50),
                          padding: EdgeInsets.all(5.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Add 1 Point',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.all(10.0),
                      child: ElevatedButton(
                        onPressed: () => setState(() => counter1 += 2),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(200, 50),
                          padding: EdgeInsets.all(5.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Add 2 Point',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.all(10.0),
                      child: ElevatedButton(
                        onPressed: () => setState(() => counter1 += 3),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(200, 50),
                          padding: EdgeInsets.all(5.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Add 3 Point',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 500,
                child: VerticalDivider(
                  thickness: 2,
                  color: Colors.black12,
                  endIndent: 5,
                  indent: 30,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text('Team B', style: TextStyle(fontSize: 45)),
                    Text(
                      '$counter2',
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.all(10.0),
                      child: ElevatedButton(
                        onPressed: () => setState(() => counter2++),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(200, 50),
                          padding: EdgeInsets.all(5.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Add 1 Point',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.all(10.0),
                      child: ElevatedButton(
                        onPressed: () => setState(() => counter2 += 2),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(200, 50),
                          padding: EdgeInsets.all(5.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Add 2 Point',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.all(10.0),
                      child: ElevatedButton(
                        onPressed: () => setState(() => counter2 += 3),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(200, 50),
                          padding: EdgeInsets.all(5.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Add 3 Point',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(10.0),
            child: ElevatedButton(
              onPressed: () => setState(() {
                counter1 = 0;
                counter2 = 0;
              }),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                fixedSize: Size(200, 50),
                padding: EdgeInsets.all(5.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Reset',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
