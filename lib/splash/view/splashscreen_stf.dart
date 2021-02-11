import 'package:authentication_repository/authentication_repository.dart';
import 'package:brn_mobile/app.dart';
import 'package:flutter/widgets.dart';
import 'package:user_repository/user_repository.dart';

import 'package:brn_mobile/generated_code/api_docs.swagger.dart';

import 'package:flutter/cupertino.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';


class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreenWidget(),
    );
  }
}


class SplashScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 5,
          backgroundColor: Colors.white,
          //preinit at this point
          navigateAfterSeconds: App(
            authenticationRepository: AuthenticationRepository(),
            userRepository: UserRepository(),
            client: ApiDocs.create(),
          ),
          loaderColor: Colors.transparent,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/logo.png"),
                        fit: BoxFit.contain
                    )
                ),
              ),
            ),
            Center(
              child: Container(
                width: 200,
                height: 200,
                child: FlareActor(
                  "assets/loading.flr",
                  animation: "loading",
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}




