// ignore_for_file: unnecessary_string_escapes

import 'package:application/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:application/home.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  isPasswordValid(String password) =>
      password.length > 6 ? null : 'Password must be 6 characters long or more';

  isEmailValid(String email) {
    RegExp regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return regex.hasMatch(email) ? null : 'Enter a valid email';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(120, 1, 23, 96),
            title: const Text(
              "Signup",
            ),
          ),
          body: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          const Text(
                            "Already have an account?    ",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          ElevatedButton(
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(238, 255, 255, 255),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Login(),
                              ));
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-vector/young-woman-white_25030-39527.jpg?t=st=1651228422~exp=1651229022~hmac=78909f429a77ba90f47d3fc60b6dd23e9ae89fc912d64ab061646b62cd443eb0&w=740"),
                        radius: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Enter your username',
                          icon: Icon(Icons.person),
                        ),
                        validator: (String? value) {
                          return (value!.isEmpty)
                              ? 'Username is required'
                              : null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: 'Enter your email',
                          icon: Icon(Icons.email),
                        ),
                        validator: ((email) => isEmailValid(email!)),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: 'Enter your password',
                          icon: Icon(Icons.lock),
                        ),
                        validator: (password) => isPasswordValid(password!),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 150,
                      height: 45,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(238, 235, 92, 99),
                        ),
                        onPressed: () {
                          final isValid = _formKey.currentState!.validate();

                          if (isValid) {
                            _formKey.currentState!.save();
                            FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: emailController.text,
                                    password: passwordController.text)
                                .then((value) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Home()));
                            }).onError((error, stackTrace) {
                              print("Error ${error.toString()}");
                            });
                          }
                        },
                        child: const Text('Signup'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
