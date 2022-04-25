import 'package:flutter/material.dart';
import 'package:flutter_vk_clone/widgets/AuthScreen/auth_info.dart';
import 'package:flutter_vk_clone/widgets/AuthScreen/auth_screen_widget.dart';
import 'package:flutter_vk_clone/widgets/Home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.blue),
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(backgroundColor: Colors.blue),
      ),
      routes: {
        '/auth': (context) => AuthScreenWidget(),
        '/auth_info': (context) => AuthInfo(),
        '/home_page': (context) => HomePage(),
      },
      initialRoute: '/auth',
    );
  }
}
