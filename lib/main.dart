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
  GlobalKey<FormState> _signInKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final RegExp emailValid = RegExp(
    r"^[a-zA0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFA),
      appBar: AppBar(title: Text("Hello")),
      body: Form(
        key: _signInKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: "Enter an Email"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter an email";
                } else if (!emailValid.hasMatch(value)) {
                  return "Please enter a valid email";
}
                return null;
              },
            ), //email
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(hintText: "Enter a Password"),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter a password";
                } else if (value.length > 6) {
                  return "Password must be atleast 6 characters";
                }
                return null;
              },
            ), //password
            ElevatedButton(
              onPressed: () {
                debugPrint("Email: ${_emailController.text}");
                debugPrint("Password: ${_passwordController.text}");
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
