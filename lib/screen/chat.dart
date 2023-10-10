import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return const ChatScreen();
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _buildTextComposer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: const InputDecoration.collapsed(
                hintText: 'Envoyez un message',
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () => _handleSubmitted(_textController.text),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mini Chat'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 90.0,
                  height: 90.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: const Color.fromRGBO(19, 69, 106, 1),
                      width: 4.0,
                    ),
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      'assets/images/plonge.jpg',
                      fit: BoxFit.cover,
                      width: 100.0,
                      height: 100.0,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const SizedBox(
                  width: 200,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Equipe de plongée sous marine',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 50),
                      SizedBox(
                        width: 30,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          const Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: const CircleAvatar(
              child: Text('User'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('User', style: Theme.of(context).textTheme.titleMedium),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
