import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Let\'s sign you in!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            const Text(
              'Welcome back! \n You\'ve been missed!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
            Image.network(
              'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
              height: 200,
              width: 200,
            ),
            // Container(
            //   height: 150,
            //   width: 150,
            //   // child: FlutterLogo(),
            //   padding: const EdgeInsets.all(10),
            //   margin: const EdgeInsets.all(10),
            //   decoration: BoxDecoration(
            //     image: const DecorationImage(
            //       fit: BoxFit.fitHeight,
            //       image: NetworkImage(
            //         'https://3009709.youcanlearnit.net/Alien_LIL_131338.png',
            //       ),
            //     ),
            //     color: Colors.blue,
            //     borderRadius: BorderRadius.circular(24),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
