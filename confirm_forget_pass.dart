import 'package:flutter/material.dart';
import 'package:flutter_test_2/forget_pass.dart';

class ConfirmForgetPass extends StatefulWidget {
  const ConfirmForgetPass({super.key});

  @override
  State<ConfirmForgetPass> createState() => _ConfirmForgetPassState();
}

class _ConfirmForgetPassState extends State<ConfirmForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar forget password
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgetPassword()));
              },
              icon: const Icon(Icons.arrow_circle_left_outlined)),
          centerTitle: true,
          title: const Text(
            'Forget Password',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          backgroundColor: const Color.fromARGB(255, 16, 62, 67),
          elevation: 0,
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 16, 62, 67),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //image of send email
                  Container(
                    margin: const EdgeInsets.only(top: 80, bottom: 10),
                    // padding: const EdgeInsets.only(top: 100, bottom: 100),
                    height: 150,
                    width: 150,
                    child: const Icon(
                      Icons.check_circle_outline_outlined,
                      color: Colors.white,
                      size: 150,
                    ),
                  ),

                  //text Check your email
                  Container(
                    margin: const EdgeInsets.all(40),
                    child: const Text(
                      'Check Your Email',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),

                  //text
                  Container(
                    margin: const EdgeInsets.only(top: 40, bottom: 70),
                    child: const Text(
                      'We send you on email with instructions \n for reseting your password',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),

                  //button done
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.4,
                    height: MediaQuery.of(context).size.height / 13,
                    //padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 107, 154, 236)),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(31)))),
                      onPressed: () {},
                      child: const Text(
                        'Send',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //text Check your Email
        ));
  }
}
