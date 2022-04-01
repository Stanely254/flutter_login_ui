import 'package:flutter/material.dart';
import 'package:login_ui/helpers/login_ui_helpers.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //     begin: Alignment.topRight,
            //     end: Alignment.bottomLeft,
            //     colors: [
            //       Colors.grey.withOpacity(.7),
            //       Colors.black.withOpacity(.1)
            //     ]),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF4ca5d8),
                  offset: Offset(5.0, 5.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Color(0xFF5ecdff),
                  offset: Offset(-5.0, -5.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
                begin: Alignment(-1, -4.0),
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFC6DBE7),
                  Color.fromARGB(255, 255, 253, 253),
                ]),
          ),
          height: size(context).height,
          width: size(context).width,
          child: Column(
            children: [
              const SizedBox(
                height: kToolbarHeight - 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/bg_image.jpg'),
                          fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purple[700]),
                  width: size(context).width,
                  height: size(context).height * .44,
                ),
              ),
              SizedBox(height: size(context).height * .02),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: 'Discover your\nDream job Here',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35)),
              ),
              SizedBox(height: size(context).height * .04),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text:
                        'Explore all the most existing jobs roles \n based on your interest and study major.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 18)),
              ),
              SizedBox(height: size(context).height * .2),
            ],
          )),
    );
  }
}
