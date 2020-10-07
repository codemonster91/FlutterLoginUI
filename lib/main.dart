import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_user/SignUpScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Login Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final email_data = TextEditingController();
    final password_data = TextEditingController();
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        body: Stack(
      children: [
        Image.network(
          "https://images.pexels.com/photos/931018/pexels-photo-931018.jpeg",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.53,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
              // color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(hintText: "Email" , icon: Icon(Icons.email)),
                          controller: email_data,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(hintText: "Password", icon: Icon(Icons.lock)),
                          obscureText: true,
                          controller: password_data,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15))),
                    onPressed: () {},
                    child: Text("Login"),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // MaterialButton(
                  //   onPressed: () {
                  //     _push(context, Register());
                  //
                  //     // Navigator.of(context).push(
                  //     //   MaterialPageRoute(builder: (context) => Register()),
                  //     // );
                  //   },
                  //   child: Text("SignUp"),
                  //   color: Colors.blueAccent,
                  //   textColor: Colors.white,
                  // )

                  InkWell(
                    child: RichText(
                      text: TextSpan(
                        text: "Does not have an account. ",
                        style: TextStyle(color: Colors.grey),
                        children: [
                          TextSpan(
                              text: "Register",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black87))
                        ],
                      ),
                    ),
                    onTap: () {
                      _push(context, Register());
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }

  void _push(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return page;
    }));
  }
}
