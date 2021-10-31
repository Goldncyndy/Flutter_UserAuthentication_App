import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  late int groupValue = 1;
  ValueChanged<int>? onChanged;
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
                      'Sign Up',
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
                      'Please sign up to enter in our app',
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
                SizedBox(height: 10.0),
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
                      'Or sign up with email',
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
                        child: TextField(
                          decoration: InputDecoration(fillColor: Colors.white, hintText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              )
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
                        child: TextField(
                          decoration: InputDecoration(fillColor: Colors.white, hintText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
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
                      'I agree with Privacy Policy',
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
                      onPressed: (){
                        Navigator.pushNamed(context, '/confirmation');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'Already have an account?',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal
                              )
                          ),
                          SizedBox(width: 5.0),
                          Text(
                              'Login',
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
  }
}

