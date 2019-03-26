import 'package:flutter/material.dart';
import 'package:projectname33/widget/switch_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'Flare Switch';
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: appTitle,
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
          primaryColor: Colors.red,
          scaffoldBackgroundColor: Colors.black.withOpacity(0.7),
        ),
        home: MainPage(appTitle: appTitle),
      );
}

class MainPage extends StatelessWidget {
  final String appTitle;

  const MainPage({this.appTitle});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: SwitchWidget(),
      );
}
