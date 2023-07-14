import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:ldapp_1/pages/practice.dart';
import 'package:ldapp_1/pages/whiteboard.dart';
import 'package:flutter_svg/flutter_svg.dart';


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
        title: Text('Learn Without Limitations'),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8),
                BlendMode.dstATop,
              ),
              child: Image.asset(
                'assets/mickymouse.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow:[
                        BoxShadow(
                              color: Colors.blue.withOpacity(0.5),
                              spreadRadius: 2.0,
                              blurRadius: 15,
                            ),
                      ] 
                    ),
                    child: Text(
                      'Welcome Back $name!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: ClipOval(
                    child: Material(
                      color: Colors.black,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChooseType(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.all(50),
                          child: Text('Pronunciation',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                
                Container(
                  child: ClipOval(
                    child: Material(
                      color: Colors.black,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DrawingBoard(),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.all(50),
                          child: Text('   Writing    ',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
