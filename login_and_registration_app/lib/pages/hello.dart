import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
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
                  'Welcome',
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
                  child: Image(
                    image: AssetImage('assets/welcome_image.png'),
                  ),
                ),
                SizedBox(height: 30.0),
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
                      SizedBox(width: 15.0),
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
                SizedBox(height: 30.0),
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
                SizedBox(height: 30.0),
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
                        Navigator.pushNamed(context, '/login');
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
                    SizedBox(width: 10.0),
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
}
