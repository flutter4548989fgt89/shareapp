import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:porject/4/cos.dart';
import 'package:porject/2/lom=ngis.dart';
import 'package:porject/2/mians.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/switch_account_background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 268,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                      child: Container(
                        height: MediaQuery.of(context).size.width / 1.28,
                        width: MediaQuery.of(context).size.width / 1.28,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(42),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(28),
                              child: Image(
                                image: AssetImage('images/profile.png'),
                                width: 108,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Ariaramin',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            SizedBox(
                              height: 24,
                            ),
                            SizedBox(
                              height: 46,
                              width: 132,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MainScreen(),
                                      ),
                                          (route) => false);
                                },
                                child: Text('Confirm'),
                              ),
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ),
                                        (route) => false);
                              },
                              child: Text(
                                'switch account',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 42, top: 52),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account? / ',
                  style: TextStyle(
                    color: greyColor,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 14,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}