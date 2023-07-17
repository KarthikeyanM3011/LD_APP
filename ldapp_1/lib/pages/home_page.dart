import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:ldapp_1/pages/practice.dart';
import 'package:ldapp_1/pages/whiteboard.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'whiteboardoptions.dart';
import 'settings.dart';

class Percent extends StatelessWidget {
  final int percent;
  Percent({required this.percent});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.done),
      title: Text(
        'Completed',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: LinearPercentIndicator(
              lineHeight: 10.0,
              percent: percent / 100,
              progressColor: Colors.purple,
              backgroundColor: Colors.purple.shade100,
            ),
          ),
          Text('$percent%'),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final int data = 75;
  final String name;
  final String mail;
  HomePage({required this.name, required this.mail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Welcome ${name}'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Image.asset(
              'my.png', // Replace with your app logo image path
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
      body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 200,
              child: Image.asset(
                'mickymouse.png', // Replace with the image path of your app's logo
                width: 100,
                height: 100,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:80),
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Text(
                            "DashBoard Options",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 28.0,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Center(
                          child: Wrap(
                            spacing: 20.0,
                            runSpacing: 20.0,
                            children: [
                              SizedBox(
                                width: 160.0,
                                height: 170.0,
                                child: Card(
                                  color: Color.fromARGB(255, 21, 21, 21),
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "goal.png",
                                            width: 64.0,
                                            height: 90.0,
                                          ),
                                          SizedBox(height: 0.0),
                                          ElevatedButton(
                                            onPressed: (){},
                                            child: Text(
                                              "Daily Task",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5.0),
                                          Text(
                                            "",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 160.0,
                                height: 170.0,
                                child: Card(
                                  color: Color.fromARGB(255, 21, 21, 21),
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "speaking.png",
                                            width: 64.0,
                                            height: 90.0,
                                          ),
                                          SizedBox(height: 0.0),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => ChooseType(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              "Pronunciation",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5.0),
                                          Text(
                                            "",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 160.0,
                                height: 170.0,
                                child: Card(
                                  color: Color.fromARGB(255, 21, 21, 21),
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "writing.png",
                                            width: 64.0,
                                            height: 90.0,
                                          ),
                                          SizedBox(height: 0.0),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Writechoose(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              "Writing",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5.0),
                                          Text(
                                            "",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 160.0,
                                height: 170.0,
                                child: Card(
                                  color: Color.fromARGB(255, 21, 21, 21),
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            "person.png",
                                            width: 64.0,
                                            height: 90.0,
                                          ),
                                          SizedBox(height: 0.0),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Settings(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              "About Me",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5.0),
                                          Text(
                                            "",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              accountName: Text(
                '$name',
                style: TextStyle(color: Colors.green),
              ),
              accountEmail: Text('$mail'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/boy.jpeg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Name',
                style: TextStyle(color: Colors.green),
              ),
              subtitle: Text(
                '$name',
                style: TextStyle(color: Colors.green),
              ),
              trailing: Icon(Icons.verified),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text(
                'Email',
                style: TextStyle(color: Colors.green),
              ),
              subtitle: Text(
                '$mail',
                style: TextStyle(color: Colors.green),
              ),
              trailing: Icon(Icons.verified),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.green),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text(
                'About',
                style: TextStyle(color: Colors.green),
              ),
              onTap: () {},
            ),
            Percent(percent: data),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Log Out',
                style: TextStyle(color: Colors.green),
              ),
              onTap: () {},
            ),
            Divider(),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                '\u00a9 2023 KMHL',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
