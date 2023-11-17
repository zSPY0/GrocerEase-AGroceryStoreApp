import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocerease/gloabals/gloabal.dart';

import '../../widgets/loading_widget.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginEmail = TextEditingController();
  TextEditingController loginPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.all(16.0),
    child: SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const SizedBox(height: 70),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    // Do something when the text is tapped
                  },
                  child: const Text(
                    'Login to your E-Store',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Image.asset(
                  'assets/images/myappicon.png',
                  width: 220,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom: 26),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: loginEmail,
                  // Replace with your controller
                  autofocus: true,
                  autofillHints: const [AutofillHints.email],
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(20),
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                      size: 18,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    // Add your validation logic
                    return null;
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: loginPassword,
                  // Replace with your controller
                  autofillHints: const [AutofillHints.password],
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.all(20),
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Colors.black,
                      size: 18,
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        // Do something when the password visibility icon is tapped
                      },
                      focusNode: FocusNode(skipTraversal: true),
                      child: const Icon(
                        Icons.visibility_outlined,
                        color: Color(0xB0101213),
                        size: 20,
                      ),
                    ),
                  ),
                  validator: (value) {
// Add your validation logic
                    return null;
                  },
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: 345,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: () async {
                      validateFields();

                      // Navigator.pushReplacementNamed(context, '/accountscreen');
// Perform login actions
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
// Replace with your desired color
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 2),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'OR',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5, top: 25),
                child: SizedBox(
                  width: 334,
                  height: 44,
                  child: ElevatedButton.icon(
                    onPressed: () async {
// Do something when the "Continue with Google" button is pressed
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.google,
                      size: 20,
                    ),
                    label: const Text(
                      'Continue with Google',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xDAFF0000),
                      textStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      elevation: 0,
                      side: const BorderSide(
                        color: Color(0xFF000000),
                        width: 0.1,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ),
                ),
              ),
            ),
      const SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'No Account ?',
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/register');
// Do something when the "Register" button is pressed
            },
            child: const Text(
              'Register',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ],
      ),

      const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 9,),
            Divider(
              thickness:0.7,
            ),
            SizedBox(height:20),

            Text(
              'Version 1.0',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF282828),

                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 28),
            Text(
              '© GrocerEase Pakistan Pvt Ltd',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Color(0xF40033A8),

                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Designed and Developed by zTechs',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Color(0xF40033A8),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ],
    ),
    ),
        ),
    );
  }

  validateFields() async {
    if(loginEmail.text.isEmpty || loginPassword.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('All the fields are Required')));

    }
    else{
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context){
            return const LoadingWidget(message: "Login is in Progress");
          }
      );
      FirebaseAuth.instance.signInWithEmailAndPassword(email: loginEmail.text.trim().toString(), password: loginPassword.text.trim().toString())
          .then((auth){
        getCurrentUsersData();
            Navigator.pop(context);
        Navigator.pushReplacementNamed(context, '/location');
      }).catchError((err){
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar( SnackBar(content: Text("$err")));
      });
    }
  }
}
