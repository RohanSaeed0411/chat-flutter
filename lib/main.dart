import 'package:flutter/material.dart';
import 'package:chat_flutter/screens/welcome_screen.dart';
import 'package:chat_flutter/screens/login_screen.dart';
import 'package:chat_flutter/screens/registration_screen.dart';
import 'package:chat_flutter/screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        ChatScreen.id: (context) => const ChatScreen(),
      },
    );

    // return FutureBuilder(
    //   // Initialize FlutterFire
    //   future: Firebase.initializeApp(),
    //   builder: (context, snapshot) {
    //     // Check for errors
    //     if (snapshot.hasError) {
    //       // return SomethingWentWrong();
    //     }
    //
    //     // Once complete, show your application
    //     if (snapshot.connectionState == ConnectionState.done) {
    //       return MaterialApp(
    //         initialRoute: WelcomeScreen.id,
    //         routes: {
    //           WelcomeScreen.id: (context) => const WelcomeScreen(),
    //           LoginScreen.id: (context) => const LoginScreen(),
    //           RegistrationScreen.id: (context) => const RegistrationScreen(),
    //           ChatScreen.id: (context) => const ChatScreen(),
    //         },
    //       );
    //     }
    //
    //     // Otherwise, show something whilst waiting for initialization to complete
    //     // return Loading();
    //   },
    // );
  }
}
