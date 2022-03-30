import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../calc_page.dart';

class SignUp extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  var userEmail = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white10,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                child: Lottie.network(
                    'https://assets9.lottiefiles.com/packages/lf20_SgQLT9.json'),
              ),
              Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 34.sp,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'By signing in you are agreeing our \n         Term and privacy policy',
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 27.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "Register",
                      style: TextStyle(
                          fontSize: 27.sp, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      String patttern =
                          r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
                      RegExp regExp = RegExp(patttern);
                      if (value!.isEmpty) {
                        return null;
                      } else if (!regExp.hasMatch(value)) {
                        return "Email must be a-z and A-Z";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'E-mail Address',
                      icon: Icon(Icons.email_outlined),
                      iconColor: Colors.grey,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Container(
                  padding: const EdgeInsets.only(left: 8.0, right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: TextFormField(
                    obscureText: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cant be empty";
                      }
                      if (value.length < 5) {
                        return 'Your password must be greater than 5';
                      }
                    },
                    decoration: InputDecoration(
                      hintText: 'Password',
                      icon: Icon(Icons.lock_outline),
                      iconColor: Colors.grey,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                onPressed: () {
                  print(userEmail.runtimeType);
                  if (_formkey.currentState!.validate()) {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => CalcPage()));
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'or connect with',
                style: TextStyle(color: Colors.grey),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook_rounded,
                      size: 50.h,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Icon(
                      Icons.message_outlined,
                      size: 40,
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Icon(
                      Icons.person,
                      size: 45.h,
                      color: Colors.blue,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
