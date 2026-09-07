import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.purple, // used purple here
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  // My personal info
  String myName = "Nakada Yukihiro";
  String myCourse = "BS in Information Technology";
  String myCollege = "Global Reciprocal Colleges";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My-portfolio act2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 60, color: Colors.deepPurple),
            SizedBox(height: 10.0),
            
            // My details
            Text(
              myName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15), // messed up the spacing here
            Text(myCourse),
            SizedBox(height: 5),
            Text(myCollege),
            
            SizedBox(height: 25),

            // About me button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMe()),
                );
              },
              child: Text('About Me'),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline, size: 50, color: Colors.purple), // changed color
            SizedBox(height: 20),
            Text(
              'I am a passionate developer who loves building mobile applications.',
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 35),
            
            // Next button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Skills()),
                );
              },
              child: Text('My Skills'),
            ),

            SizedBox(height: 15),

            // Back button
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Skills'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Testing how to show lists
            Text(
              'Skills 1: Flutter, Dart',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20),
            Text(
              'Skills 2: Java, C++',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 35),
            
            // Next button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Projects()),
                );
              },
              child: Text('My Project'),
            ),

            SizedBox(height: 10),

            // Back button
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Project'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.code, size: 55),
            SizedBox(height: 20),
            Text(
              'Project Name: SysArch',
              style: TextStyle(fontSize: 19),
            ),
            SizedBox(height: 30),
            
            // Next button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactPage()),
                );
              },
              child: Text('Contact Me'),
            ),

            SizedBox(height: 20),

            // Back button
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Me'),
      ),
      body: Center(
        child: SingleChildScrollView( // just in case it overflows on small phones
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email, size: 60),
              SizedBox(height: 10),
              Text('yukihironakada742@gmail.com', style: TextStyle(fontSize: 18)),
              
              SizedBox(height: 40),

              // Social Media
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(Icons.facebook, size: 40, color: Colors.blue),
                      SizedBox(height: 5),
                      Text('Nakada Yukihiro', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Icon(Icons.camera_alt, size: 40, color: Colors.pink),
                      SizedBox(height: 5),
                      Text('@vulnerableonetoshiro', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Icon(Icons.chat, size: 40, color: Colors.indigo),
                      SizedBox(height: 5),
                      Text('guts2240.', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 40),
              
              // Back button
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}