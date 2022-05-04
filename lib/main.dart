import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

import 'export.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewmodel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Moni',
          theme: ThemeData(
            textTheme: GoogleFonts.dmSansTextTheme(),
          ),
          home: child,
        );
      },
      child: const HomeView(),
    );
  }
}
