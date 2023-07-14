// import 'package:flutter/material.dart';
// import 'package:ldapp_1/pages/home_page.dart';
// import 'package:ldapp_1/pages/login_page.dart';
// import 'package:ldapp_1/pages/signup_page.dart';
// import 'package:google_sign_in/google_sign_in.dart';


// class SignupPage1 extends StatelessWidget {
//   final GoogleSignIn _googleSignIn = GoogleSignIn();
//   String? email;

//   Future<void> _signInWithGoogle(BuildContext context) async {
//     try {
//       final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//       if (googleUser != null) {
//         // User has selected an email
//         email = googleUser.email;
//         // Store the email or perform any necessary operations
//         // Proceed to the next page
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => SignUpPage(email:email)),
//         );
//       }
//     } catch (error) {
//       // Handle sign-in errors
//       print('Google Sign-In Error: $error');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Signup with Google'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
            
//               ElevatedButton(
//                 onPressed: () {
//                   _signInWithGoogle(context);
//                 },
//                 child: Text('Sign up with Google'),
              
//             ),
//             ElevatedButton(onPressed: () {
//               Navigator.push(context, MaterialPageRoute(builder: ((context) => SignUpPage(email: email))));
//             }, child: Text('SignUp'))
//           ],
//         ),
//       ),
//     );
//   }
// }