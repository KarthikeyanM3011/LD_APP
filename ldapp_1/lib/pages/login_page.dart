import 'package:flutter/material.dart';
import 'package:ldapp_1/pages/home_page.dart';
import 'package:ldapp_1/pages/signup_page.dart';
import 'package:ldapp_1/pages/signup_page1.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _mailcontroller =TextEditingController();
  TextEditingController _passcontroller=TextEditingController();
  TextEditingController _namecontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text('LogIn',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      ),
      body: Container(
        decoration: BoxDecoration(color : Colors.orange[300]),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Container(
                width: 420,
                height: 750,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 10.0,
                    blurRadius: 10,
                    
                  ),
                  ]
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Card(
                    color: Colors.yellow[200],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green,
                                  blurRadius: 20.0,
                                  spreadRadius: 1.0,
                                ),
                              ],
                            ),
                            child: Text('WELCOME',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              fontStyle: FontStyle.italic,
                          
                            ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 100,
                          child: Icon(Icons.login,size: 60,color: Colors.green,),
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: 350,
                            child: TextField(
                              controller: _namecontroller,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[300],
                                hintText: 'Name',
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple,width: 2),borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: 350,
                            child: TextField(
                              controller: _mailcontroller,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[300],
                                hintText: 'Email',
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple,width: 2),borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: 350,
                            child: TextField(
                              controller: _passcontroller,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                filled: true,
                                fillColor: Colors.grey[300],
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple,width: 2),borderRadius: BorderRadius.circular(20)),
                                            
                              ),
                            ),
                          ),
                        ),
                              
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child:TextButton(onPressed: () {},child: Text('Forgot Password?',textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),) 
                                ),
                        
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Container(
                                  width: 95,
                                  // color: Colors.black,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(name:_namecontroller.text,mail:_mailcontroller.text),));
                                    },
                                    child: Text('LogIn',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto',
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),));
                                  },
                                  child: Text('New User?SignUp')),
                              )
                            ],
                          ),
                        ),
                          
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ),
        ),
      ),
    );
  }
}