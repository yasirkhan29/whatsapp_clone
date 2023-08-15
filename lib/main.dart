import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Side bar  globle key
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Side bar  globle key
      key: _globalKey,
      backgroundColor: const Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          //Side bar  globle key
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: const Icon(Icons.menu, color: Colors.white)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Messeges",
                          style: TextStyle(color: Colors.white),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Online",
                          style: TextStyle(color: Colors.grey),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Group",
                          style: TextStyle(color: Colors.grey),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "More",
                          style: TextStyle(color: Colors.grey),
                        )),
                  ],
                ),
              )
            ],
          ),
          //Frist Position
          Positioned(
              top: 190,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 25, right: 25),
                height: 220,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 78, 209, 154),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Favorite contact",
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buidContectAvatator('Asma', 'f1.jpeg'),
                          buidContectAvatator('Ayesha', 'f4.jpeg'),
                          buidContectAvatator('Asad', 'f3.jpeg'),
                          buidContectAvatator('Alix', 'f5.jpg'),
                          buidContectAvatator('Amna', 'f6.jpeg'),
                          buidContectAvatator('Altaf', 'f7.jpeg'),
                          buidContectAvatator('Shawaz', 'f8.jpeg'),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          // Second Position
          Positioned(
            top: 365,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              height: 200,
              decoration: const BoxDecoration(
                color: Color(0xFFEFFFFC),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: ListView(
                padding: EdgeInsets.only(left: 25),
                children: [
                  buildConversivation('Lora', "I miss my Mom", 'f1.jpeg', 0),
                  Divider(
                    indent: 40,
                  ),
                  buildConversivation(
                      'Ayesha', "How to going your day", 'f4.jpeg', 5),
                  Divider(
                    indent: 40,
                  ),
                  buildConversivation(
                      'Asad', "Hello how are you", 'f3.jpeg', 0),
                  Divider(
                    indent: 40,
                  ),
                  buildConversivation(
                      'Alix', "Today is my birthday your...", 'f5.jpg', 3),
                  Divider(
                    indent: 40,
                  ),
                  buildConversivation(
                      'Amna', "I have no balance in my phone", 'f6.jpeg', 0),
                  Divider(
                    indent: 40,
                  ),
                  buildConversivation('Altaf',
                      "Pray for me today is my interview", 'f7.jpeg', 2),
                  Divider(
                    indent: 40,
                  ),
                  buildConversivation(
                      'Shawaz', "Hello how are you", 'f8.jpeg', 0),
                  Divider(
                    indent: 40,
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 97, 214, 101),
          child: Icon(
            Icons.edit_outlined,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
      //side bare menu
      drawer: Drawer(
        width: 275,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40))),
        backgroundColor: Colors.black,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 56,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  const Row(
                    children: [
                      UserAvatar(filename: 'f3.jpeg'),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Asad',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Drewerslider(
                      title: 'chats',
                      icon: Icons.chat_bubble,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Drewerslider(
                      title: 'Notification',
                      icon: Icons.notifications,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Drewerslider(
                      title: 'Data and Storage',
                      icon: Icons.storage,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Drewerslider(
                      title: 'Help',
                      icon: Icons.help,
                    ),
                  ),
                  const Divider(
                    height: 35,
                    color: Colors.green,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Drewerslider(
                        title: "Invite a frind",
                        icon: Icons.people_alt_outlined),
                  ),
                ],
              ),
              InkWell(
                  onTap: () {},
                  child: Drewerslider(title: "Log Out", icon: Icons.logout))
            ],
          ),
        ),
      ),
    );
  }

// Method for below conversication
  Column buildConversivation(
      String name, String message, String filename, int msgcount) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    UserAvatar(filename: filename),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 5),
                        Text(
                          message,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: Column(
                children: [
                  Text(
                    "16.55",
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  if (msgcount > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color.fromARGB(255, 48, 194, 104),
                      child: Text(
                        msgcount.toString(),
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

//method for uper contect
  Padding buidContectAvatator(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          UserAvatar(
            filename: filename,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

//side bar class extrat widgt drewer side bare
class Drewerslider extends StatelessWidget {
  final String title;
  final IconData icon;
  const Drewerslider({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(
            width: 56,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }
}

// this is use for Avatar image wedgt
class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset("images/$filename").image,
      ),
    );
  }
}
