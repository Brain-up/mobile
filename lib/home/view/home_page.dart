import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brn_mobile/Bloc/authentication.dart';

class HomePage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => HomePage());
  }

  @override
  Widget build(BuildContext context) {
    final userId =
        "ghg-gkglk-jyhuy BlocProvider.of<LoginBloc>(context,listen: false).add(const LoginSubmitted());";
        // BlocProvider.of<AuthenticationBloc>(context).state.user.id;
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('UserID: $userId'),
            RaisedButton(
              child: const Text('Logout'),
              onPressed: () {
                BlocProvider.of<AuthenticationBloc>(context).add(AuthenticationLogoutRequested());
              },
            ),
          ],
        ),
      ),
    );
  }
}
