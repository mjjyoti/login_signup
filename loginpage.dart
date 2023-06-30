import 'package:flutter/material.dart';
import 'package:flutter_test_2/forget_pass.dart';
import 'package:flutter_test_2/signup_page.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
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
                SizedBox(
                  // padding: const EdgeInsets.only(top: 100, bottom: 100),
                  height: 150,
                  width: 150,
                  child: Image.asset("images/logo.png"),
                ),

                //textForm Field username
                Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(
                        left: 25, right: 25, top: 35, bottom: 20),
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
                        hintText: 'username',
                        hintStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(32)),
                      ),
                    )),

                //password textform field
                Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    padding: const EdgeInsets.only(
                        top: 10, left: 20, right: 20, bottom: 30),
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
                      obscureText: passToggle,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: 'password',
                          hintStyle: const TextStyle(color: Colors.white),
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(32)),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passToggle = !passToggle;
                              });
                            },
                            child: Icon(
                              passToggle
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.white,
                            ),
                          )),
                    )),

                //button login
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: MediaQuery.of(context).size.height / 13,
                  //padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 107, 154, 236)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(31)))),
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: const Text(
                    '--or--',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),

                //button signup
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width / 1.9,
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
                              builder: (context) => const SignupPage()));
                    },
                    child: const Text('Sign Up'),
                  ),
                ),

                //textbutton header of page
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgetPassword()));
                      },
                      child: const Text(
                        'Forget Your Password?',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )),
                ),
              ]),
            )),
      ),
    );
  }
}
