import 'package:flutter/material.dart';
import 'package:flutter_test_2/confirm_forget_pass.dart';
import 'package:flutter_test_2/loginpage.dart';
import 'package:form_field_validator/form_field_validator.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
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
                  //logo image container
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    // padding: const EdgeInsets.only(top: 100, bottom: 100),
                    height: 150,
                    width: 150,
                    child: Image.asset("images/logo.png"),
                  ),

                  //text forget your password?
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: const Text(
                      'Forget Your \n Password?',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),

                  //text
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    child: const Text(
                      'Please enter your email address \n you will recieve a link to create \na new password via email.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),

                  //enter your email textfield
                  Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 8, top: 20),
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(color: Colors.white),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Required"),
                        ]),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'Type Your Email',
                          hintStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(32)),
                        ),
                      )),

                  //send button
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width / 2.1,
                    height: MediaQuery.of(context).size.height / 13,
                    //padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 16, 62, 67)),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                                side: const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(31)),
                          )),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ConfirmForgetPass()));
                      },
                      child: const Text('Send'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
