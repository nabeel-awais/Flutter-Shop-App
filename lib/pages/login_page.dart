import 'package:flutter/material.dart';
import 'package:shop_app_flutter/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final border = const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(39, 38, 38, 1),
      ),
      borderRadius: BorderRadius.all(Radius.circular(50)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Shopping',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
                const SizedBox(width: 25),
              ],
            ),
            const SizedBox(height: 30),
            Icon(
              Icons.shopping_cart_checkout_outlined,
              size: 150,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                width: 400,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.person,
                        size: 35,
                      ),
                    ),
                    border: border,
                    enabledBorder: border,
                    focusedBorder: border,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              //padding: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: SizedBox(
                width: 400,
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(Icons.password),
                    ),
                    border: border,
                    enabledBorder: border,
                    focusedBorder: border,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot password?',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ), // Replace with your home screen widget
                );
              },
              child: const Text(
                'Login',
                style: TextStyle(
                    color: Color.fromARGB(255, 41, 40, 40),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                fixedSize: const Size(350, 50),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '-Or-',
              style: TextStyle(
                  color: Color.fromARGB(255, 41, 40, 40),
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            const SizedBox(height: 10),
            const Text(
              'Login with',
              style: TextStyle(
                  color: Color.fromARGB(255, 41, 40, 40),
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            Row(
              children: [
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.facebook,
                    size: 40,
                    color: Color(0xFF1877F2),
                  ),
                ),
                Image.asset(
                  'assets/images/google_logo.png',
                  height: 35,
                ),
                const Spacer(),
              ],
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  const TextSpan(text: "Don't have an account? "),
                  TextSpan(
                    text: "Signup",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Make "signup" bold
                      color: Theme.of(context)
                          .colorScheme
                          .primary, // Color for the clickable text
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
