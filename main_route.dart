import 'dart:io';
import 'package:f_p5/second_route.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
            "Main Page",
            style: TextStyle(
                color: Colors.white,
                fontSize: 23,
            ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 700,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: const Text(
                "Main Activity",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Container(
                    width: 350,
                    child: TextField(
                      controller: usernameController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          filled: true,
                          focusColor: Colors.white,
                          hintText: "Username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 350,
                    child: TextField(
                      controller: passwordController,
                      textAlign: TextAlign.center,
                      obscureText: true,
                      decoration: const InputDecoration(
                          filled: true,
                          focusColor: Colors.white,
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 67,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>
                            SecondPage(
                                username: usernameController.text.toString(),
                                password: passwordController.text.toString()),),
                      );
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Colors.indigo
                        ),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5)
                                ),
                            ),
                        ),
                    ),
                    child: const Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 100,
                  height: 67,
                  child: ElevatedButton(
                    onPressed: () {
                      usernameController.text = '';
                      passwordController.text = '';
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Colors.indigo,
                            ),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5))
                            ),
                        ),
                    ),
                    child: const Text(
                      "CLEAR",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 100,
                  height: 67,
                  child: ElevatedButton(
                    onPressed: () {
                      exit(0);
                    },
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.indigo,
                        ),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5)
                                ),
                            ),
                        ),
                    ),
                    child: const Text(
                      "CLOSE",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
