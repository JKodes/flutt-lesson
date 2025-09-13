import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 27, 119, 212),
        ),
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

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFA),
      appBar: AppBar(title: Text("Hello")),
      body: Form(
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _emailController,
            ), //email
            TextFormField(
              controller: _passwordController,
            ), //password
            ElevatedButton(onPressed: (){
              debugPrint("Email: ${_emailController.text}");
              debugPrint("Password: ${_passwordController.text}");
  }, child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
