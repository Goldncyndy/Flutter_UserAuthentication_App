import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  late int groupValue = 1;
  ValueChanged<int>? onChanged;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                      'Login Now',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 27.0,
                          fontWeight: FontWeight.normal
                      )
                  ),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Text(
                      'Please login or sign up to continue using our app',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal
                      )
                  ),
                ),
                SizedBox(height: 40.0),
                Center(
                  child: Text(
                      'Enter via social networks',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal
                      )
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage('assets/twitter_image.png'),
                        ),
                        padding: EdgeInsets.fromLTRB(68.0, 10.0, 68.0, 10.0),
                        decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        child: Image(
                          image: AssetImage('assets/facebook_image.png'),
                        ),
                        padding: EdgeInsets.fromLTRB(68.0, 10.0, 68.0, 10.0),
                        decoration: BoxDecoration(
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                      'Or login with email',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal
                      )
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 60.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              hintText: 'Email',
                              // validator: MultiValidator([
                              // RequiredValidator(errorText: "* Required"),
                              // EmailValidator(errorText: "Enter valid email id"),
                              // ]),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(8)),
                              ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 60.0,
                        child: TextFormField(
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              hintText: 'Password',
                              // validator: MultiValidator([
                              //   RequiredValidator(errorText: "* Required"),
                              //   MinLengthValidator(6,
                              //       errorText: "Password should be atleast 6 characters"),
                              //   MaxLengthValidator(15,
                              //       errorText:
                              //       "Password should not be greater than 15 characters")
                              // ]),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(8)),
                              ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Radio(
                      onChanged: (int? e) => something(e),
                      activeColor: Colors.blue,
                      value: 1,
                      groupValue: groupValue,
                    ),
                    SizedBox(width: 3.0),
                    Text(
                      'Remember me',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                    SizedBox(width: 100.0),
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Container(
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal
                      ),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(80.0, 20.0, 80.0, 20.0),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Container(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal
                              )
                          ),
                          SizedBox(width: 5.0),
                          Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.blue[600],
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal
                              )
                          ),
                        ],
                      ),
                    ),),
                ),
              ],
            ),
          )
      ),
    );
  }


  something(int? e) {
    setState(() {
      if (e == 1) {
        groupValue = 1;
      }
  });
}}
