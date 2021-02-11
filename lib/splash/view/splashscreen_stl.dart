import 'package:authentication_repository/authentication_repository.dart';
import 'package:brn_mobile/Routes/routes.dart';
import 'package:brn_mobile/app.dart';
import 'package:flutter/widgets.dart';
import 'package:user_repository/user_repository.dart';

import 'package:brn_mobile/generated_code/api_docs.swagger.dart';

import 'package:flutter/cupertino.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

import 'splash_page.dart';

class SplashScreenWidgetStL extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => SplashScreenWidgetStL());
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 2,
          backgroundColor: Colors.white,
          navigateAfterSeconds: RoutingConstants.firstPageScreen,
          //preinit at this point
          // navigateAfterFuture:  ,
          // App(
          //   authenticationRepository: AuthenticationRepository(),
          //   userRepository: UserRepository(),
          //   client: ApiDocs.create(),
          // ),
          loaderColor: Colors.transparent,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                height: 392,
                width: 800,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/logo.png"), fit: BoxFit.contain)),
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
