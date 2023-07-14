import 'package:flutter/material.dart';
import 'package:ldapp_1/pages/home_page.dart';
import 'package:ldapp_1/pages/login_page.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:email_validator/email_validator.dart';



class SignUpPage extends StatelessWidget {
  // final dynamic email;
  // SignUpPage({required this.email});
  
  TextEditingController _mailcontroller =TextEditingController();
  TextEditingController _namecontroller =TextEditingController();
  TextEditingController _passcontroller =TextEditingController();
  TextEditingController _passcontroller1 =TextEditingController();
  TextEditingController _phcontroller =TextEditingController();

  void passcheck(dynamic pass,dynamic pass1,dynamic email,BuildContext context){
    final emailValid = EmailValidator.validate(email);
    if(pass == pass1 && pass.length!=0 && pass.length>5 && pass.length<12){
      if(emailValid)
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
      else{
        showDialog(context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Error'),
          content: Text('Check EMail'),
          actions: [
            ElevatedButton(onPressed: () {Navigator.of(context).pop();}, child: Text('Ok',textAlign: TextAlign.center,),),
          ],
        );
      }
        );
      }

    }
    else{
      showDialog(context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Error'),
          content: Text('Password do not match the Password requirements'),
          actions: [
            ElevatedButton(onPressed: () {Navigator.of(context).pop();}, child: Text('Ok',textAlign: TextAlign.center,),),
          ],
        );
      },

      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text('LogIn',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.orange[300]),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Container(
                width: 420,
                height: 850,
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
                                hintText: 'Mail',
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple,width: 2),borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                          ),
                        ),

                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                width: 350,
                                child: TextField(
                                  obscureText: true,
                                  controller: _passcontroller,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[300],
                                    hintText: 'Password',
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple,width: 2),borderRadius: BorderRadius.circular(20)),
                                  ),
                                ),
                              ),
                            ),
                            Text('Min_Length:6,Max_Length:12,Maycontain symbols',textAlign: TextAlign.center,style: TextStyle(color: Colors.grey,),)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            width: 350,
                            child: TextField(
                              obscureText: true,
                              controller: _passcontroller1,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[300],
                                hintText: 'Confirm Password',
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
                              controller: _phcontroller,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[300],
                                hintText: 'Phone',
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple,width: 2),borderRadius: BorderRadius.circular(20),),
                              ),
                            ),
                          ),
                        ),
                         

                        

                          ElevatedButton(
                           onPressed:() { passcheck(_passcontroller.text,_passcontroller1.text,_mailcontroller.text,context);},
                           child: Text('SignUp',
                           textAlign: TextAlign.center,
                           style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                           ),
                           ),)

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