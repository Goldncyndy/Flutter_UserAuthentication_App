import 'package:flutter/material.dart';

class Confirmation extends StatefulWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Padding(
        padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
        child: Container(
          child: Column(
            children: [
              Center(
                child: Image(
                  image: AssetImage('assets/confirmation_image.png'),
                ),
              ),
              SizedBox(height: 40.0),
              Center(
                child: Text(
                    'Thank you',
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
                    'Now, welcome to our beautiful app',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal
                    )
                ),
              ),
              SizedBox(height: 60.0),
              Container(
                child: Center(
                  child: TextButton(
                    child: Text(
                    'Let\'s go!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                    ),
                    ),
                      onPressed: (){
                      Navigator.pushNamed(context, '/hello');
                    }
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                //padding: EdgeInsets.fromLTRB(80.0, 20.0, 80.0, 20.0),
              ),
            ],
          ),
        ),
        ),

      ),
    );
  }
}
