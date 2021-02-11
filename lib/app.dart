import 'package:authentication_repository/authentication_repository.dart';
import 'package:brn_mobile/generated_code/api_docs.swagger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brn_mobile/home/home.dart';
import 'package:brn_mobile/login/login.dart';
import 'package:brn_mobile/splash/splash.dart';
import 'package:sizer/sizer_util.dart';
import 'package:user_repository/user_repository.dart';
import 'package:brn_mobile/Bloc/authentication.dart';

import 'Routes/routes.dart';
import 'colorTheme/color.dart';
import 'tocheckndel/firstpagewidget.dart';
// import 'package:swagger/api.dart';

class App extends StatelessWidget {
  App({
    Key key,
    @required this.authenticationRepository,
    @required this.userRepository,
    @required this.client,
  })  : assert(authenticationRepository != null),
        assert(userRepository != null),
        assert(client != null),
        super(key: key);

  final AuthenticationRepository authenticationRepository;
  final UserRepository userRepository;
  final ApiDocs client;

  @override
  build(BuildContext context) {
    var loginCred = LoginDto(
        grantType: '1', password: '***', username: 'nickifomir@gmail.com');
    var getResult = client.loginUsingPost(loginDto: loginCred);
    getResult.then((value) => {
          if (value.isSuccessful)
            {
              print(
                  'Hello, its result ${value.body.accessToken},  ${value.body.toString()}')
            }
          else
            {
              print(
                  'Hello, its errors result ${value.body.toString()},  ${value.body.toString()}')
            }
        });
    ThemeData base = ThemeData.light();

    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizerUtil().init(constraints, orientation);
            return MaterialApp(
              home: Scaffold(
                backgroundColor: Colors.white,
              ),
              debugShowCheckedModeBanner: false,
              theme: _appTheme(base),
              initialRoute: RoutingConstants.splashScreen,
              //gatewayScreen,
              onGenerateRoute: RouterPage.ongenerateRoute,
            );
          },
        );
      },
    );
  }

  ThemeData _appTheme(ThemeData base) {
    return base.copyWith(
        primaryColor: AppColor.primaryColor,
        canvasColor: AppColor.drawerBGColor);
  }
}
// return RepositoryProvider.value(
//   value: authenticationRepository,
//   child: BlocProvider(
//     create: (_) => AuthenticationBloc(
//       authenticationRepository: authenticationRepository,
//       userRepository: userRepository,
//       client: client,
//     ),
//     child: AppView(),
//   ),
// );
//

// providers: [
// ChangeNotifierProvider(create: (context) => ProductBloc()),

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: _navigatorKey,
        builder: (context, child) {
          return BlocListener<AuthenticationBloc, AuthenticationState>(
            listener: (context, state) {
              switch (state.status) {
                case AuthenticationStatus.authenticated:
                  _navigator.pushAndRemoveUntil<void>(
                    HomePage.route(),
                    (route) => false,
                  );
                  break;
                case AuthenticationStatus.unauthenticated:
                  _navigator.pushAndRemoveUntil<void>(
                    LoginPage.route(),
                    (route) => false,
                  );
                  break;
                default:
                  break;
              }
            },
            child: child,
          );
        },
        initialRoute: '/',
        routes: {
          '/': (ctx) => SplashScreenWidgetStL(),
          '/firstpage': (ctx) => FirstPage(),
          '/login': (ctx) =>
              BlocListener<AuthenticationBloc, AuthenticationState>(
                listener: (context, state) {
                  switch (state.status) {
                    case AuthenticationStatus.authenticated:
                      _navigator.pushAndRemoveUntil<void>(
                        HomePage.route(),
                        (route) => false,
                      );
                      break;
                    case AuthenticationStatus.unauthenticated:
                      _navigator.pushAndRemoveUntil<void>(
                        LoginPage.route(),
                        (route) => false,
                      );
                      break;
                    default:
                      break;
                  }
                },
              ),
        }
        // onGenerateRoute: (_) => SplashScreenWidgetStL.route()
        // SplashPage.route(),
        );
  }
}
