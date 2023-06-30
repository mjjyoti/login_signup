import 'package:flutter/material.dart';
//import 'package:flutter_test_2/forget_pass.dart';
import 'package:flutter_test_2/loginpage.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool passToggleone = true;
  bool passToggletwo = true;

  //final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
            'Sign Up',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          backgroundColor: const Color.fromARGB(255, 16, 62, 67),
          elevation: 0,
        ),

        //body
        body: Center(
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 16, 62, 67),
              child: SingleChildScrollView(
                child: Column(children: [
                  //logo image container
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    // padding: const EdgeInsets.only(top: 100, bottom: 100),
                    height: 150,
                    width: 150,
                    child: Image.asset("images/logo.png"),
                  ),

                  //textForm Field username
                  Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(
                          left: 25, right: 25, bottom: 8, top: 25),
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Required"),
                        ]),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(32)),
                        ),
                      )),

                  //email text form field
                  Container(
                      alignment: Alignment.topLeft,
                      margin:
                          const EdgeInsets.only(left: 25, right: 25, bottom: 8),
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
                          hintText: 'Email Address',
                          hintStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(32)),
                        ),
                      )),

                  //password textform field
                  Container(
                      alignment: Alignment.topLeft,
                      margin:
                          const EdgeInsets.only(left: 25, right: 25, bottom: 8),
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Required"),
                          LengthRangeValidator(
                              min: 8,
                              max: 20,
                              errorText: "Insert min-8 and max-20 characters")
                        ]),
                        obscureText: passToggleone,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: Colors.white),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(32)),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  passToggleone = !passToggleone;
                                });
                              },
                              child: Icon(
                                passToggleone
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white,
                              ),
                            )),
                      )),

                  //password textform field
                  Container(
                      alignment: Alignment.topLeft,
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      padding: const EdgeInsets.only(
                          top: 5, left: 20, right: 20, bottom: 30),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Required"),
                          LengthRangeValidator(
                              min: 8,
                              max: 20,
                              errorText: "Insert min-8 and max-20 characters")
                        ]),
                        obscureText: passToggletwo,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle: const TextStyle(color: Colors.white),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(32)),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  passToggletwo = !passToggletwo;
                                });
                              },
                              child: Icon(
                                passToggletwo
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white,
                              ),
                            )),
                      )),

                  //button signup
                  Container(
                    margin: const EdgeInsets.only(top: 10),
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const LoginPage()));
                      },
                      child: const Text('Sign Up'),
                    ),
                  ),
                ]),
              )),
        ));
  }
}
