import 'package:flutter/widgets.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:brn_mobile/app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_repository/user_repository.dart';
import 'Bloc/authentication/authentication_bloc.dart';
import 'generated_code/api_docs.swagger.dart';
import 'home/view/home_page.dart';
import 'login/bloc/login_bloc.dart';

// import 'splash/view/splashscreen_stf.dart';
void main() {
  //route for direct splash with fixed delay
  // runApp(SplashScreenPage());

  final authenticationRepository = AuthenticationRepository();
  final userRepository = UserRepository();
  final client = ApiDocs.create();

  runApp(MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
            create: (BuildContext context) =>
                LoginBloc(authenticationRepository: authenticationRepository)),
        BlocProvider<AuthenticationBloc>(
          create: (BuildContext context) => AuthenticationBloc(
            authenticationRepository: authenticationRepository,
            userRepository: userRepository,
            client: client,
          ),
        ),
      ],
      child: App(
        authenticationRepository: authenticationRepository,
        userRepository: userRepository,
        client: client,
      )));
}
