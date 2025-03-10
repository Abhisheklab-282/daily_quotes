import 'package:daily_qoutes/data/auth/auth.dart';
import 'package:daily_qoutes/screen/login/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  final Auth _auth = Auth();
  // Controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 620,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/img1.png"),
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20),

                      // Name area
                      buildTextField(
                          "Full Name",  _nameController, false),
                      SizedBox(height: 15),

                      //   email area
                      buildTextField("Email",  _emailController, false),
                      SizedBox(height: 15),

                      // Password area
                      buildTextField(
                          "Password",  _passwordController, true),
                      SizedBox(height: 20),
                      // Confirm Password area
                      buildTextField(
                          "Confirm Password",  _confirmPasswordController, true),
                      SizedBox(height: 20),

                      // SignUp Button
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF9467C1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                          onPressed:_signUp,
                          child: Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      // Login Navigation
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account? ",
                              style: TextStyle(color: Colors.white)),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                            },
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),)
          ],
        ));
  }

  buildTextField(String label,  TextEditingController controller,
      bool isPassword) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(30),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword ? _obscureText : false,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.never ,
          labelStyle: TextStyle(color: Colors.grey),
          suffixIcon: isPassword
              ? IconButton(
            icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;

              });
            },
          )
              : null,
          filled: true,
          fillColor: Colors.white.withValues(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),

      ),
    );
  }

   _signUp() async{
    String userName = _nameController.text.toString();
    String email = _emailController.text.toString();
    String password = _passwordController.text.toString();
    String confirmPassword = _confirmPasswordController.text.toString();

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

      if (user != null && password == confirmPassword) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Sign Up Failed!")),
        );
      }


  }

}
