import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slack_clone/provider/theme_provider.dart';

import 'Screens/Home/home_screen.dart';
import 'Screens/Splash_Screen/splash_screen.dart';

void main() {
  runApp(SlackClone());
}

class SlackClone extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            initialRoute: SplashScreen.id,
            routes: {
              SplashScreen.id: (context) => SplashScreen(),
              HomeScreen.id: (context) => HomeScreen(),
            },
          );
        },
      );
}
