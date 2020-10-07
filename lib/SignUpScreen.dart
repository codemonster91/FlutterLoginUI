import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  static   GlobalKey<FormState> _formkey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final email_data = TextEditingController();
    final password_data = TextEditingController();
    final fullname_data = TextEditingController();


    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Register"),
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
            height: MediaQuery.of(context).size.height * 0.55,
            child: Form(
              key: _formkey,
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
                          TextFormField(
                            decoration: InputDecoration(hintText: "Full Name"),
                            controller: fullname_data,

                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Email"),
                            obscureText: true,
                            controller: email_data,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: InputDecoration(hintText: "Password"),
                            obscureText: true,
                            controller: password_data,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 50,
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15))),
                      onPressed: () {},
                      child: Text("Register"),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    )
        // body: Container(
        //   margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       TextField(
        //         decoration: InputDecoration(hintText: "Full Name"),
        //         controller: email_data,
        //       ),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       TextField(
        //         decoration: InputDecoration(hintText: "Email"),
        //         controller: password_data,
        //       ),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       TextField(
        //         decoration: InputDecoration(hintText: "Password"),
        //         obscureText: true,
        //         controller: fullname_data,
        //       ),
        //       SizedBox(
        //         height: 20,
        //       ),
        //       MaterialButton(
        //         onPressed: () {
        //           // _push(context, Register());
        //
        //           Navigator.of(context).push(
        //             MaterialPageRoute(builder: (context) => Register()),
        //           );
        //         },
        //         child: Text("Register"),
        //         color: Colors.blueAccent,
        //         textColor: Colors.white,
        //       )
        //     ],
        //   ),
        // ),
        );
  }
}
