import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ana Luísa Faria Gomes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorChangePage(),
    );
  }
}

class ColorChangePage extends StatefulWidget {
  @override
  _ColorChangePageState createState() => _ColorChangePageState();
}

class _ColorChangePageState extends State<ColorChangePage> {
  Color _backgroundColor = Colors.white;

  void _changeColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mudança de Cores'),
      ),
      body: Container(
        color: _backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mudança de Cores',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _changeColor(Colors.red),
                  child: Text('Vermelho'),
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                ),
                ElevatedButton(
                  onPressed: () => _changeColor(Colors.green),
                  child: Text('Verde'),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                ),
                ElevatedButton(
                  onPressed: () => _changeColor(Colors.blue),
                  child: Text('Azul'),
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}