import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_rpg/services/userApi.dart';
import 'package:real_rpg/splashScreen.dart';
import 'package:real_rpg/view/userLogging/LoginPage.dart';
import 'package:real_rpg/wrapper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  UserApi userApi = UserApi();
  runApp(MyApp(userApi: userApi));
}

class MyApp extends StatefulWidget {
  final UserApi userApi;

  MyApp({Key key, this.userApi}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<UserApi>(
            create: (_) => widget.userApi,
            lazy: false,
          ),
        ],
        child: MaterialApp(
          onGenerateRoute: (routeSettings) {
            return MaterialPageRoute(builder: (context) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: Wrapper(),
              );
            });
          },
          home: SplashScreen(),
          routes: {
            Wrapper.routeName: (context) => Wrapper(),
            LoginPage.routeName: (context) => LoginPage()
          },
        ));
  }
}
