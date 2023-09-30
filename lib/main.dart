import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          (isLogin != false) ? Colors.white : Colors.redAccent.shade400,
      body: (isLogin != false)
          ? Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 130,
                      left: 30,
                      bottom: 130,
                    ),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      color: Colors.redAccent.shade400,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(150),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wellcome To RNW",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "RED & WHITE",
                          style: TextStyle(
                            fontSize: 32,
                            letterSpacing: 2,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Please login to continue",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 14, left: 25),
                          height: height / 19,
                          width: width / 1.2,
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade200,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Text(
                            "Email / Username",
                            style: TextStyle(
                              color: Colors.black12,
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 14, left: 25),
                          height: height / 19,
                          width: width / 1.2,
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade200,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.black12,
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: height / 19,
                          width: width / 1.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.redAccent.shade400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          "FORGET PASSWORD ?",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "OR",
                          style: TextStyle(
                            color: Colors.redAccent.shade400,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: height / 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isLogin = !isLogin;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: height / 19,
                            width: width / 1.2,
                            decoration: BoxDecoration(
                              color: Colors.redAccent.shade400,
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            child: const Text(
                              "SIGN IN",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "EXITING USER ?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: height / 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isLogin = !isLogin;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: height / 19,
                            width: width / 1.2,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            child: Text(
                              "LOG IN",
                              style: TextStyle(
                                  color: Colors.redAccent.shade400,
                                  fontSize: 22),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 130,
                      left: 30,
                      bottom: 90,
                    ),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(150),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sign Up With",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.redAccent.shade400,
                          ),
                        ),
                        Text(
                          "RED & WHITE",
                          style: TextStyle(
                            fontSize: 32,
                            letterSpacing: 2,
                            color: Colors.redAccent.shade400,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 14, left: 25),
                          height: height / 19,
                          width: width / 1.2,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Text(
                            "Email / Username",
                            style: TextStyle(
                              color: Colors.black12,
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 14, left: 25),
                          height: height / 19,
                          width: width / 1.2,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              color: Colors.black12,
                              fontSize: 14,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: height / 19,
                          width: width / 1.2,
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade400,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Text(
                            "SIGN UP",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.2, 0),
                          child: Text(
                            "Or Signup With",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.redAccent.shade400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height / 500,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: height / 19,
                              width: width / 9,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.redAccent.shade400,
                              ),
                            ),
                            SizedBox(
                              width: width / 10,
                            ),
                            Container(
                              height: height / 19,
                              width: width / 9,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.redAccent.shade400,
                              ),
                              child: Icon(Icons.facebook_outlined),
                            ),
                            SizedBox(
                              width: width / 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
