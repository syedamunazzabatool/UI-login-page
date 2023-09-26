import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.jpeg"),
                    fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Image.asset(
                      "assets/images/yellow.jpeg",
                      height: 100,
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset(
                      "assets/images/blue.jpeg",
                      height: 90,
                    )),
              ],
            ),
          ),
          SafeArea(
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome Back',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const TextField(
                          style: TextStyle(color: Color(0xffdcdcdd)),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff3a3b40),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff7a7b7e),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            hintText: 'Enter email here',
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff183573),
                            ),
                            hintStyle: TextStyle(color: Color(0xff7a7b7e)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const TextField(
                          style: TextStyle(color: Color(0xff3a3b40)),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff3a3b40)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff7a7b7e),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            hintText: 'Enter password here',
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff183573),
                            ),
                            hintStyle: TextStyle(color: Color(0xff7a7b7e)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {
                                // Add your Forgot Password logic logic here
                              },
                              child: const Text('Forgot password?')),
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your login logic here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(0xff1e3a77), // Background color
                              foregroundColor: Colors.white, // Text color
                              disabledForegroundColor: Colors
                                  .white, // Text color when enabled (not needed here)
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize: const Size(300, 80), // Button size
                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Dont have an account?',
                              style: TextStyle(
                                  color: Color(0xff4b494a), fontSize: 15),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            TextButton(
                              onPressed: () {
                                // Add your signup logic here
                              },
                              child: const Text(
                                'Signup',
                                style: TextStyle(
                                    color: Color(0xff3f3d3d),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xff3f3d3d),
                                    decorationThickness: 1),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: TextButton(
                            onPressed: () {
                              // Add your "Continue with Google" logic here
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black, // Text color
                              backgroundColor: Colors.white, // Background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                                side: const BorderSide(
                                  color: Color(0xffa1a1a1),
                                ),
                              ),
                              minimumSize: const Size(250, 80), // Button size
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/logo/google.png',
                                  height: 20,
                                ),
                                const SizedBox(width: 10),
                                const Text('Continue with Google')
                              ],
                            ),
                          ),
                        ),

                        // Spacer(
                        //   flex: 2,
                        // ),
                      ])))
        ]));
  }
}
