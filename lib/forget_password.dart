import 'package:flutter/material.dart';
class ForgetPass extends StatefulWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  State<ForgetPass> createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
 
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
}
initWidget() {
   TextEditingController emailController = TextEditingController();
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
              color: Color(0xffF5591F),
              gradient: LinearGradient(
                colors: [(Color(0xffF5591F)), Color(0xffF2861E)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
                  child: Image.asset(
                    "assets/logo.png",
                    height: 120,
                    width: 120,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20, top: 20),
                  alignment: Alignment.bottomRight,
                  child: const Text(
                    "ForgetPassword",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            )),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: TextField(
              autofocus: false,
              keyboardType: TextInputType.emailAddress,
              autocorrect: true,
              controller: emailController,
              cursorColor: const Color(0xffF5591F),
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Color(0xffF5591F),
                ),
                hintText: "Enter Email",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          
        ],
      ),
    ));
  }

