import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPassword = true;
  bool _keepLoggedIn = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Center(
              child: Column(
                children: [
                  Image.asset('gambar/logo.png', height: 100),
                  SizedBox(height: 8),
                  Text(
                    "LKS MART",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Sign In",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 5),
            Text(
              "Enter your ID and password to sign in",
              style: TextStyle(fontSize: 14, color: Colors.blueGrey),
            ),

            SizedBox(height: 10),
            Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                hintText: 'Masukkan email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 5),
            Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
            TextField(
              controller: _passwordController,
              obscureText: _showPassword,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                  icon: Icon(
                    _showPassword ? Icons.remove_red_eye : Icons.visibility_off,
                  ),
                ),
                hintText: 'Min. 8 character',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Checkbox(
                  value: _keepLoggedIn,
                  onChanged: (value) {
                    setState(() {
                      _keepLoggedIn = value!;
                    });
                  },
                ),
                Text("Keep me logged in"),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/hal2');
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 72, 98, 142),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
