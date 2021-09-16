import 'package:flutter/material.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

Widget _title() {
  return Column(
    children: [
      // Container(
      //     width: 150,
      //     margin: EdgeInsets.only(top: 10),
      //     child: Image(image: AssetImage('assets/icons/vamosWhite.png'))),
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'iCelcius',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}




  // _checkIfFirstLogin() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     first_login = prefs.getBool('first_login');
  //   });
  //   print(first_login);
  //   if (first_login != false) {
  //     Navigator.push(context,
  //         MaterialPageRoute(builder: (context) => PrivacyPolicyWelcomePage()));
  //   } else {
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => Wrapper()));
  //   }
  // }


Widget _submitButton() {
  return InkWell(
    //  onTap: _checkIfFirstLogin,
    child: Container(
      // width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.green[50].withAlpha(100),
                offset: Offset(2, 2),
                blurRadius: 5,
                spreadRadius: 1)
          ],
          color: Colors.white),
      child: Text(
        'GET STARTED',
        style: TextStyle(
            fontSize: 20, color: Colors.black),
      ),
    ),
  );
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(2, 4),
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.red[400], Colors.black])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _title(),
                SizedBox(height: 15),
                _submitButton(),
              ],
            ),
          ),
          // permission ? _permission() : SizedBox.shrink()
        ],
      ),
    ));
  }
}
