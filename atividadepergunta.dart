import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController _textEditingController = TextEditingController();
  List<String> chatMessages = [];

  void _sendMessage() {
    setState(() {
      String message = _textEditingController.text;
      chatMessages.add(message);
      _textEditingController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Flutter'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatMessages.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(chatMessages[index]),
                );
              },
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      hintText: 'Digite sua resposta...',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _sendMessage,
                  child: Text('Enviar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}