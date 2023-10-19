/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: Heading(
              //mengubah widget Text
              text: "Hello world!"),
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  // contoh class stateless Widget
  final String text;

  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Color.fromARGB(255, 2, 115, 150),
      ),
    );
  }
}

//Menambah class stateful Widget

class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({Key? key, required this.text}) : super(key: key);

  @override
  _BiggerTextState createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0;
            });
          },
        )
      ],
    );
  }
}
*/

/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: BiggerTeks(
              text: "Hello world!"), // Ubah widget Heading ke PerubahanText
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
        ));
  }
}

class BiggerTeks extends StatefulWidget {
  final String text;
  const BiggerTeks({Key? key, required this.text}) : super(key: key);

  @override
  _BiggerTeksState createState() => _BiggerTeksState();
}

class _BiggerTeksState extends State<BiggerTeks> {
  double _textSize = 30.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text,
            style: TextStyle(fontSize: _textSize, fontStyle: FontStyle.italic)),
        ElevatedButton(
          child: const Text(
            "ageungan",
          ),
          onPressed: () {
            setState(() {
              _textSize = 100.0;
            });
          },
        )
      ],
    );
  }
}*/

// dropdown Button
/*import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FirstScreen());
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layar Utama'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: DropdownButton<String>(
        items: const <DropdownMenuItem<String>>[
          DropdownMenuItem<String>(
            value: 'Dart',
            child: Text('Dart'),
          ),
          DropdownMenuItem<String>(
            value: 'Kotlin',
            child: Text('Kotlin'),
          ),
          DropdownMenuItem<String>(
            value: 'Swift',
            child: Text('Swift'),
          ),
        ],
        value: language,
        hint: const Text('Select Language'),
        onChanged: (String? value) {
          setState(() {
            language = value;
          });
        },
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
    );
  }
}*/

// Input Widget
/*import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FirstScreen());
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? _name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Write your name here...',
                  labelText: 'Your name',
                ),
                onChanged: (String value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Hello, $_name'),
                        );
                      });
                },
              )
            ],
          )),
    );
  }
} */

// input widget controller text
/*void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FirstScreen());
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Write your name here...',
                labelText: 'Your name',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Hello, ${_controller.text}'),
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
} */

//Switch

/* import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FirstScreen());
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Switch(
        value: lightOn,
        onChanged: (bool value) {
          setState(() {
            lightOn = value;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(lightOn ? 'Light On' : 'Light Off'),
              duration: Duration(seconds: 1),
            ),
          );
        },
      ),
    );
  }
} */

/*
//Radio
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FirstScreen());
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Radio<String>(
              value: 'Dart',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
            title: Text('Dart'),
          ),
          ListTile(
            leading: Radio<String>(
                value: 'Kotlin',
                groupValue: language,
                onChanged: (String? value) {
                  setState(() {
                    language = value;
                    showSnackbar();
                  });
                }),
            title: Text('Kotlin'),
          ),
          ListTile(
            leading: Radio<String>(
              value: 'Swift',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackbar();
                });
              },
            ),
            title: Text('Swift'),
          ),
        ],
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: Duration(seconds: 1),
      ),
    );
  }
} 
*/
//CheckBox

/*import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FirstScreen());
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Text(
          'Custom Font',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 30,
          ),
        ),
      ),
    );
  }
} */

// List View

//import 'package:flutter/material.dart';

/*void main() {
  runApp(ScrollingScreen());
}

class ScrollingScreen extends StatelessWidget {
  const ScrollingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: const Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: const Center(
                child: Text(
                  '2',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: const Center(
                child: Text(
                  '3',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: const Center(
                child: Text(
                  '4',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

/*void main() {
  runApp(ScrollingScreen());
}

class ScrollingScreen extends StatelessWidget {
  const ScrollingScreen({Key? key}) : super(key: key);

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: numberList.map((number) {
            return Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(color: Colors.white),
              ),
              child: Center(
                child: Text(
                  '$number', // Ditampilkan sesuai item
                  style: const TextStyle(
                      fontSize: 50, fontFamily: 'Oswald', color: Colors.white),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
*/

// listView builder

/*import 'package:flutter/material.dart';

void main() {
  runApp(ScrollingScreen());
}

class ScrollingScreen extends StatelessWidget {
  ScrollingScreen({Key? key}) : super(key: key);

  final List<int> urutanNo = [
    1,
    2,
    3,
    4,
    5,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: urutanNo.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  '${urutanNo[index]}',
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}*/

//listView separated
/*import 'package:flutter/material.dart';

void main() {
  runApp(ScrollingScreen());
}

class ScrollingScreen extends StatelessWidget {
  ScrollingScreen({Key? key}) : super(key: key);

  final List<int> urutanNomor = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.separated(
          itemCount: urutanNomor.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 250,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black),
              ),
              child: Center(
                child: Text(
                  '${urutanNomor[index]}',
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
        ),
      ),
    );
  }
} */

//Expanded & flexible
/*import 'package:flutter/material.dart';

void main() {
  runApp(Rainbow());
}

class Rainbow extends StatelessWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}*/

/*import 'package:flutter/material.dart';
void main() {
  runApp(ExpandedFlexiblePage());
}

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [
                ExpandedWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: const [
                ExpandedWidget(),
                ExpandedWidget(),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Expanded',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontFamily: 'Oswald'),
          ),
        ),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Flexible',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
*/

//Navigation

/*import 'package:flutter/material.dart';

void main() {
  runApp(Visit_Bandung());
}

class Visit_Bandung extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return SecondScreen('Hello from first screen!');
              }),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String message;

  const SecondScreen(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            OutlinedButton(
              child: const Text('Kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}*/

// Responsive Layout

/*import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Row(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      'LayoutBuilder: ${constraints.maxWidth}',
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints Constraints) {
                return Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                        style: const TextStyle(
                            color: Colors.blueGrey, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'LayoutBuilder: ${Constraints.maxWidth}',
                        style: const TextStyle(
                            color: Colors.blueGrey, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsivePage(),
    );
  }
}

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return ListView(
              children: _generateContainers(),
            );
          } else {
            return GridView.count(
              crossAxisCount: 6,
              children: _generateContainers(),
            );
          }
        },
      ),
    );
  }

  List<Widget> _generateContainers() {
    return List<Widget>.generate(10, (index) {
      return Container(
        margin: const EdgeInsets.all(8),
        color: Colors.blueGrey,
        height: 200,
      );
    });
  }
}
