import 'package:flutter/material.dart';

void main() {
  runApp(const KelasBebas());
}

class KelasBebas extends StatelessWidget {
  const KelasBebas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Halaman login sebagai halaman utama
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 88, 205, 255),
        title: const Text(
          "TRAVEL KITA",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            color: Colors.white,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: Image.asset(
                'assets/img/TRAVEL.png',
                height: 300,
              )),
              const Text(
                'Email',
                style: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Value',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Value',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 24.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman grid setelah sign in
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GridPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.black,
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 250, 250),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              GestureDetector(
                onTap: () {
                  // Navigasi ke halaman lupa kata sandi
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordPage()),
                  );
                },
                child: const Text(
                  'Belum Punya Akun?',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 150.0),
              const Align(
                alignment:
                    Alignment.center, // Menjaga agar teks tetap di tengah
                child: Text(
                  'Copyright@IlhamHadi.Dev',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login dengan akun",
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                    child: Image.asset(
                  'assets/img/TRAVEL.png',
                  height: 350,
                )),
                const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Value',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Value',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 24.0),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika masuk di sini
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 250, 250),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 150.0),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Copyright@IlhamHadi.Dev',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Halaman Grid
class GridPage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {"title": "Title", "date": "Updated today"},
    {"title": "Title", "date": "Updated yesterday"},
    {"title": "Title", "date": "Updated 2 days ago"},
    {"title": "Title", "date": "Updated today"},
    {"title": "Title", "date": "Updated yesterday"},
    {"title": "Title", "date": "Updated 2 days ago"},
    {"title": "Title", "date": "Updated today"},
    {"title": "Title", "date": "Updated yesterday"},
    {"title": "Title", "date": "Updated 2 days ago"},
    {"title": "Title", "date": "Updated today"},
    {"title": "Title", "date": "Updated yesterday"},
    {"title": "Title", "date": "Updated 2 days ago"},
  ];

  GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Title",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MenuDash()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 88, 205, 255),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Tiga item per baris
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.65, // Rasio tinggi-lebar untuk grid
          ),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/img/grid.png'),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items[index]["title"]!,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  const SizedBox(height: 1),
                  Text(items[index]["date"]!),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class MenuDash extends StatelessWidget {
  const MenuDash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Title",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(11.0),
          width: 700,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Column(
            // Align items to the start so image goes upwards
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Adjust image position by reducing the height and adding top padding
              Padding(
                padding:
                    const EdgeInsets.only(top: 0.0), // Adjust padding as needed
                child: Center(
                  child: Image.asset(
                    'assets/img/menudash.png',
                    width: 850, // Adjust the height as needed
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
