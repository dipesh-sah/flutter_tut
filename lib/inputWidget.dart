import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    var emailText = TextEditingController();
    var password = TextEditingController();
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Sample App'),
            ),
            body: Center(
                child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: emailText,
                    decoration: InputDecoration(
                        hintText: "Enter Email Here",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide:
                                const BorderSide(color: Colors.deepOrange)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        prefixIcon: const Icon(Icons.email)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    controller: password,
                    decoration: InputDecoration(
                        hintText: "Enter Password Here",
                        prefixIcon: const Icon(Icons.remove_red_eye_sharp),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide:
                                const BorderSide(color: Colors.deepOrange)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18))),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        String email = emailText.text.toString();
                        String pass = password.text.toString();
                        print('${email}, ${pass}');
                      },
                      child: const Text('Get Data'))
                ],
              ),
            ))));
  }
}
