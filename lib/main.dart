import 'package:flutter/services.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/overlaping_fix.dart';
import 'package:flutter_application_1/dragimage.dart';
//import '../data/data.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

//commented as cheking to run code to fix image
// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen 1',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimryColor,
        scaffoldBackgroundColor: kBackgroudColor,
        textTheme: const TextTheme(
          displayLarge: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontFamily: 'IndieFlower'),
          bodyLarge: TextStyle(color:kPrimryColor),
              headlineLarge:
              TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontFamily: 'IndieFlower'),
          ),
        ),
             home: const WelcomeScreen(),
      );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var children;
    return Scaffold(
      body:Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image:DecorationImage(
                  image: AssetImage("Assets/Images/south_delhi.jpg"),
                  fit:BoxFit.cover
                ),
              ),
            ),
          ),
         Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [TextSpan(text:"Interior Designs\n",
                    style:Theme.of(context)
                    .textTheme.displayLarge,
                      ),
                      TextSpan(text:"Design the house in your way",
                      style:Theme.of(context).textTheme.headlineLarge)
                    ],
                  ),
                ),
Column(
  children: [
    FittedBox(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DragImage();
              },
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 25),
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: kPrimryColor, // You might need to define kPrimryColor
          ),
          child: Row(
            children: <Widget>[
              Text(
                "Custom",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black,
                    ),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    ),
    const SizedBox(height: 16),
    FittedBox(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return  Overlap();
              },
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 25),
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: kPrimryColor, // You might need to define kPrimryColor
          ),
          child: Row(
            children: <Widget>[
              Text(
                "Designs",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black,
                    ),
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ),
  ],
),

              ],
            ),
          ),
       ],
      ),
    );
  }
}
