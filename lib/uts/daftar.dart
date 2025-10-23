import 'package:flutter/material.dart';

class DaftarPage extends StatefulWidget {
  const DaftarPage({super.key});

  @override
  State<DaftarPage> createState() => _DaftarPageState();
}

class _DaftarPageState extends State<DaftarPage> {
  bool _showPassword = true;
  bool _showConfirmPassword = true;

  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: 60),
            Center(
              child: Column(
                children: [
                  Image.asset('gambar/logo.png', height: 150),
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
              "Daftar",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              "Silahkan isi Data Pribadi Anda!",
              style: TextStyle(fontSize: 14, color: Colors.blueGrey),
            ),
            SizedBox(height: 10),

            Text("Nama Lengkap", style: TextStyle(fontWeight: FontWeight.bold)),
            TextField(
              controller: _namaController,
              decoration: InputDecoration(
                hintText: 'Nama Lengkap',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),

            Text("Alamat", style: TextStyle(fontWeight: FontWeight.bold)),
            TextField(
              controller: _alamatController,
              decoration: InputDecoration(
                hintText: 'Alamat',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),

            Text("Username", style: TextStyle(fontWeight: FontWeight.bold)),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: 'Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),

            Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
            TextField(
              controller: _passwordController,
              obscureText: _showPassword,
              decoration: InputDecoration(
                hintText: 'Min. 8 karakter',
                suffixIcon: IconButton(
                  icon: Icon(
                    _showPassword ? Icons.remove_red_eye : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 10),
            
            Text(
              "Konfirmasi Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _confirmPasswordController,
              obscureText: _showConfirmPassword,
              decoration: InputDecoration(
                hintText: 'Ulangi password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _showConfirmPassword
                        ? Icons.remove_red_eye
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _showConfirmPassword = !_showConfirmPassword;
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/menu');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 72, 98, 142),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  "Daftar",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah punya akun? "),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    "Login di sini",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
