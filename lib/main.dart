import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_rpg/services/userApi.dart';
import 'package:real_rpg/view/mainInterface/addAction/addAction.dart';
import 'package:real_rpg/view/mainInterface/mainInterface.dart';
import 'package:real_rpg/view/userLogging/LoginPage.dart';
import 'package:real_rpg/wrapper.dart';
import 'package:flame/flame.dart';

void main() {
  initAssets();
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
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (routeSettings) {
            return MaterialPageRoute(builder: (context) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: Wrapper(),
              );
            });
          },
          home: MainInterface(),
          routes: {
            Wrapper.routeName: (context) => Wrapper(),
            LoginPage.routeName: (context) => LoginPage(),
            AddAction.routeName: (context) => AddAction()
          },
        ));
  }
}

void initAssets(){
  Flame.images.loadAll(
    <String>[
      'assets/images/mountainBackground/parallax-mountain-bg.png'
    ]
  );
}