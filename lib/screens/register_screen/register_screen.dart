import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocerease/screens/dashboard/dashboard_screen.dart';
import 'package:grocerease/widgets/loading_widget.dart';
import 'package:intl/intl.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController passWord = TextEditingController();
  TextEditingController cPassword = TextEditingController();

  int? _selectedGender;
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  bool _isPasswordVisible = false;
  bool _iscPasswordVisible = false;
  DateTime? _selectedDate;
  // final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate;
        dateController.text = DateFormat('dd-MMMM-yyyy').format(_selectedDate!);
      });
    }
  }

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 140),
              // Adjust the top value as needed
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: TextFormField(
                      controller: firstName,
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter(RegExp(r'[a-zA-Z, ]'),
                            allow: true)
                      ],
                      decoration: const InputDecoration(
                        labelText: 'First Name',
                        prefixIcon: Icon(
                          Icons.person_outline_rounded,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: TextFormField(
                      controller: lastName,
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter(RegExp(r'[a-zA-Z, ]'),
                            allow: true)
                      ],
                      decoration: const InputDecoration(
                        labelText: 'Last Name',
                        prefixIcon: Icon(
                          Icons.person_outline_rounded,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: TextFormField(
                      controller: emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Email Address',
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                          size: 20,
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Text(
                            '',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || !value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: TextFormField(
                      controller: passWord,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Colors.black,
                          size: 20,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                      ),
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                      obscureText: !_isPasswordVisible,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: TextFormField(
                      controller: cPassword,
                      decoration: InputDecoration(
                        labelText: 'Retype Password',
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Colors.black,
                          size: 20,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _iscPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              _iscPasswordVisible = !_iscPasswordVisible;
                            });
                          },
                        ),
                      ),
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                      obscureText: !_iscPasswordVisible,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: GestureDetector(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: AbsorbPointer(
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Date of Birth (optional)',
                            prefixIcon: Icon(
                              Icons.calendar_today_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                          controller: dateController, // Add this line
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(25, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                          child: Icon(
                            Icons.man_rounded,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                          child: Icon(
                            Icons.woman,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.5, -0.25),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(3, 8, 0, 10),
                            child: Text(
                              'Gender',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const SizedBox(width: 16),
                      Radio<int>(
                        value: 0,
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      ),
                      const Text(
                        'Male',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Radio<int>(
                        value: 1,
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      ),
                      const Text(
                        'Female',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: const AlignmentDirectional(0, 0.55),
                    child: SizedBox(
                      width:
                          300, // Set the width to expand to the maximum available width
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle create account button press
                          validateInputFields();
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Create Account',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account? ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, "/loginpage");
// Handle login text onTap
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Divider(),
                  const SizedBox(height: 12),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "By Proceeding Further, I acknowledge and state that I have Read and Understood the terms and conditions and shall comply with the terms and conditions and privacy Policy of GrocerEase Pakistan Pvt. Ltd has context menu.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        height: 1.6,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top + 8,
              left: 8,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DashboardScreen()),
                  );
                },
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).padding.top + 30),
                  SizedBox(height: MediaQuery.of(context).padding.bottom + 20),
                  const Text(
                    'Register',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  validateInputFields() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context){
          return const LoadingWidget(message: "Registration in Progress");
        }
    );

    if (firstName.text.isEmpty ||
        lastName.text.isEmpty ||
        emailAddress.text.isEmpty ||
        passWord.text.isEmpty ||
        cPassword.text.isEmpty ||
        dateController.text.isEmpty ||
        _selectedGender == null) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('All the fields are Required')));
    }
    else if(passWord.text.trim().toString() != cPassword.text.trim().toString()){
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Passwords Does not Match')));
    }
    else{
      var x = checkEmailAlreadyExist(emailAddress.text.trim().toString());
      if( await x ){
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Email Already Exits')));
      }
      else{
        registerUser();
      }
    }
  }

  checkEmailAlreadyExist(String email) async{
    final emailList=await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
    if(emailList.isNotEmpty){
      return true;
    }
    else{
      return false;
    }
  }

  registerUser()async{
    var email = emailAddress.text.trim().toString();
    var password =passWord.text.trim().toString();
    var gender = _selectedGender == 0 ? "Male": "Female";


    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((auth){
      final User? grocereaseUser = auth.user;
      Map user={
        "id": grocereaseUser!.uid,
        "FirstName": firstName.text.trim().toString(),
        "LastName": lastName.text.trim().toString(),
        "EmailAddress": emailAddress.text.trim().toString(),
        "DOB": dateController.text.trim().toString(),
        "Gender": gender,
      };

      DatabaseReference db = FirebaseDatabase.instance.ref().child('Users');
      db.child(grocereaseUser.uid).set(user).then((value){
        FirebaseAuth.instance.signOut();
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Account Successfully Created')));
        Navigator.pop(context);//dismiss Loading
        Navigator.pushReplacementNamed(context, '/login');
      });


    }).catchError((err){
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$err')));
    });
  }
}
