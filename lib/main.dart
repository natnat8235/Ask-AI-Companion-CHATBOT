import 'package:flutter/material.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'splash_screen.dart';
import 'Messages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Ai Companion',
      theme: ThemeData(brightness: Brightness.dark),
      home: Splash_Screen(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DialogFlowtter dialogFlowtter;
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> messages = [];

  @override
  void initState() {
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // Adjust the height here
        child: AppBar(
          title: Text(
            'Ask AI Comp',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true, // Center the title
          backgroundColor: Color(0xFF00D6CA),
          toolbarHeight: 100.0, // Adjust the toolbar height
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu, size: 30), // Adjust the size here
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white, // Change background color to white
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: Color(0xFF00D6CA),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Renato Estravela Jr',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 1),
                              Text(
                                'estravela.renato1@gmail.com',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.chevron_right, // Change the icon here
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10), // Added space between header and items
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'GET IN TOUCH',
                        style: TextStyle(
                          color: Color(0xFF00D6CA),
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Adjust the font size
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.email, // Email icon
                        color: Color(0xFF00D6CA), // Set color to 00D6CA
                      ),
                      title: Text(
                        'Send us an Email',
                        style: TextStyle(
                          color: Color(0xFF000000).withOpacity(0.55),
                          fontWeight: FontWeight.bold, // Make the text bold
                          fontSize: 14, // Adjust the font size
                        ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right, // Chevron right icon
                        color: Colors.black.withOpacity(0.55), // Set color to black
                      ),
                      tileColor: Colors.white,
                      onTap: () {
                        // Update UI based on drawer item selection
                      },
                    ),


                    ListTile(
                      leading: Icon(
                        Icons.system_update_alt, // Version update icon
                        color: Color(0xFF00D6CA), // Set color to 00D6CA
                      ),
                      title: Text(
                        'Version Update',
                        style: TextStyle(
                          color: Color(0xFF000000).withOpacity(0.55),
                          fontWeight: FontWeight.bold, // Make the text bold
                          fontSize: 14, // Adjust the font size
                        ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right, // Chevron right icon
                        color: Colors.black.withOpacity(0.55), // Set color to black
                      ),
                      tileColor: Colors.white,
                      onTap: () {
                        // Perform action when version update item is tapped
                      },
                    ),

                    SizedBox(height: 10), // Added space between titles
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'NEED HELP',
                        style: TextStyle(
                          color: Color(0xFF00D6CA),
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Adjust the font size
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.directions_run, // Troubleshoot icon
                        color: Color(0xFF00D6CA), // Set color to 00D6CA
                      ),
                      title: Text(
                        'Run Troubleshooting',
                        style: TextStyle(
                          color: Color(0xFF000000).withOpacity(0.55),
                          fontWeight: FontWeight.bold, // Make the text bold
                          fontSize: 14, // Adjust the font size
                        ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right, // Chevron right icon
                        color: Colors.black.withOpacity(0.55), // Set color to black
                      ),
                      tileColor: Colors.white,
                      onTap: () {
                        // Update UI based on drawer item selection
                      },
                    ),

                    ListTile(
                      leading: Icon(
                        Icons.info, // Version update icon
                        color: Color(0xFF00D6CA), // Set color to 00D6CA
                      ),
                      title: Text(
                        'About Us',
                        style: TextStyle(
                          color: Color(0xFF000000).withOpacity(0.55),
                          fontWeight: FontWeight.bold, // Make the text bold
                          fontSize: 14, // Adjust the font size
                        ),
                      ),
                      trailing: Icon(
                        Icons.chevron_right, // Chevron right icon
                        color: Colors.black.withOpacity(0.55), // Set color to black
                      ),
                      tileColor: Colors.white,
                      onTap: () {
                        // Perform action when version update item is tapped
                      },
                    ),

                  ],
                ),
              ),

              Container(
                alignment: Alignment.center,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Version 1.0.0',
                  style: TextStyle(
                    color: Color(0xFF00D6CA),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),



      body: Container(
        color: Color(0xFFD9D9D9),
        child: Column(
          children: [
            Expanded(child: MessagesScreen(messages: messages)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.image),
                    color: Color(0xFF00D6CA),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        controller: _controller,
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          hintText: 'Send me a message',
                          hintStyle: TextStyle(color: Colors.black45),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      sendMessage(_controller.text);
                      _controller.clear();
                    },
                    icon: Icon(Icons.send),
                    color: Color(0xFF00D6CA),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  sendMessage(String text) async {
    if (text.isEmpty) {
      print('Message is empty');
    } else {
      setState(() {
        addMessage(Message(text: DialogText(text: [text])), true);
      });

      DetectIntentResponse response = await dialogFlowtter.detectIntent(
        queryInput: QueryInput(text: TextInput(text: text)),
      );
      if (response.message == null) return;
      setState(() {
        addMessage(response.message!);
      });
    }
  }

  addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({'message': message, 'isUserMessage': isUserMessage});
  }
}
