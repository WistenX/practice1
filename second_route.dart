import 'package:f_p5/third_route.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String username;
  String password;

  SecondPage({super.key, required this.username,required this.password});
  final inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text(
            "Second Page",
            style: TextStyle(
                color: Colors.white,
                fontSize: 28
            ),
        ),
      ),
      body:  Center(
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
                "Second Activity",
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
              margin: const EdgeInsets.fromLTRB(5, 20, 5, 0),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Container(
                    width: 400,
                    child: TextField(
                      controller: inputController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          filled: true,
                          focusColor: Colors.white,
                          hintText: "Phone/Web",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              margin: const EdgeInsets.fromLTRB(5, 15, 5, 10),
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 67,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.indigo,
                          ),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      5
                                  ),
                                  ),
                              ),
                          ),
                      ),
                      child: const Text(
                        "CALL", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  SizedBox(
                    width: 100,
                    height: 67,
                    child: ElevatedButton(
                      onPressed: () {
                        //Enter Your Code
                      },
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.indigo,
                          ),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(
                                      5))
                              )
                          )

                      ),
                      child: const Text(
                        "WEB",
                        style: TextStyle(
                            color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 300,
                margin: const EdgeInsets.all(5),
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 67,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ThirdPage(),),
                          );
                        },
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Colors.indigo,
                            ),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius
                                        .circular(5))
                                )
                            )

                        ),
                        child: const Text(
                          "NEXT", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}