import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/components/navbar.dart';
import 'package:website/dimensions/dimension.dart';
import 'package:website/screens/homeScreen/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

bool isMobile = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    _updateScreenType();
  }

  void _updateScreenType() {
    setState(() {
      // Here you can set a threshold width for laptop vs phone.
      // For example, assume width > 600 is a laptop screen
      isMobile = MediaQuery.of(context).size.width < 600;
    });
  }

  @override
  Widget build(BuildContext context) {
    _updateScreenType();
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>
              Dimensions(screenHeight: screenHeight, screenWidth: screenWidth),
        ),
      ],
      child: Scaffold(
        appBar: Navbar(
          state: "home",
          customHeight:
              Dimensions(screenHeight: screenHeight, screenWidth: screenWidth)
                  .getHeight(isMobile? 72: 98),
        ),
        body: HomeScreen(),
      ),
    );
  }
}
