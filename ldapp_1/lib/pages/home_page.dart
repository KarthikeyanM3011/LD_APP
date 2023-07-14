import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:ldapp_1/pages/practice.dart';


class Percent extends StatelessWidget {
  final int percent;
  Percent({required this.percent});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.done),
      title: Text('Completed'),
      subtitle: Row(
        children: [
          Expanded(
            child: LinearPercentIndicator(
              lineHeight: 10.0,
              percent: percent/100,
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
  final int data=75;
  final String name;
  final String mail;
  HomePage({required this.name ,required this.mail});
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Without Limitations'),
      ),

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.5),
                      spreadRadius: 2.0,
                      blurRadius: 15,
                    ),
                  ]
                ),
                child: Text('Welcome Back $name !',textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            ),

            Container(
              child: Text('PRONOUNCIATION',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 60,fontWeight: FontWeight.bold),),
              height: 200,
               width: 200,
               margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                       color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                    ),

            ),

          ElevatedButton(
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => ChooseType())));
                    },
                   child: Text('Practice')
                  ),
          ],
        ),
      ),

      drawer: FractionallySizedBox(
        widthFactor: 0.75,
      child : Drawer(
        child: ListView(
          children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.brown,
                ),
                accountName: Text('$name',style: TextStyle(color: Colors.green),),
                accountEmail: Text('$mail'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/boy.jpeg'),
                ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Name',style: TextStyle(color: Colors.green),),
                  subtitle: Text('$name',style: TextStyle(color: Colors.green),),
                  trailing: Icon(Icons.verified),
                ),

                ListTile(
                  leading: Icon(Icons.mail),
                  title: Text('Email',style: TextStyle(color: Colors.green),),
                  subtitle: Text('$mail',style: TextStyle(color: Colors.green),),
                  trailing: Icon(Icons.verified),
                ),

                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings',style: TextStyle(color: Colors.green),),
                  onTap:() {},
                ),

                ListTile(
                  leading: Icon(Icons.book),
                  title: Text('About',style: TextStyle(color: Colors.green),),
                  onTap:() {},
                ),

                Percent(percent: data),

                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Log Out',style: TextStyle(color: Colors.green),),
                  onTap:() {},
                ),

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
      ),
    
    );
  }
}