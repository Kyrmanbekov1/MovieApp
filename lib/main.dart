import 'package:flutter/material.dart';
import 'package:flutter_application_12/core/presentation/providers/movie_provider.dart';
import 'package:flutter_application_12/core/presentation/screens/home.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MovieProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        
        home: const HomePage(),
      ),
    );
  }
}