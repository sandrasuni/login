import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/services/firebaseauthservice.dart';

class Registrationpage extends StatefulWidget {
  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  // const Registrationpage({super.key});
  TextEditingController usernameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Sign up',
              style: TextStyle(
                  fontFamily: 'Pacifico', fontSize: 20, color: Colors.black),
            ),
            Text('Create your account'),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Username',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 196, 216)),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 196, 216)),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(Icons.password),
                  labelText: 'Password',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 196, 216)),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(Icons.password),
                  labelText: 'Confirm Password',
                  filled: true,
                  fillColor: const Color.fromARGB(255, 255, 196, 216)),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(700, 40),
                  backgroundColor: Color.fromARGB(255, 133, 9, 79)),
              onPressed: () async {
                setState(() {
                  isloading = true;
                });
                await signup(
                    username: usernameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                    confirmPassword: confirmPasswordController.text,
                    context: context);
                setState(() {
                  isloading = false;
                });
              },
              child: isloading
                  ? CircularProgressIndicator()
                  : Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white),
                    ),
            ),
            Text(
              'Or',
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.purple)),
                onPressed: () {},
                child: Text(
                  'Sign in with Google',
                  style:
                      TextStyle(color: const Color.fromARGB(255, 115, 7, 47)),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 85),
              child: Row(
                children: [
                  Text(
                    'Already have an account?',
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child:
                          Text('Login', style: TextStyle(color: Colors.pink))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
