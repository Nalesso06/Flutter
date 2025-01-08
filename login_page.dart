import 'package:flutter/material.dart';
import 'home_page.dart';

class PaginaLogin extends StatefulWidget {
  _PaginaLoginState createState() => _PaginaLoginState();
}

class _PaginaLoginState extends State<PaginaLogin> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _cognomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _vaiAllaHome() {
    final String nome = _nomeController.text;
    final String cognome = _cognomeController.text;
    final String email = _emailController.text;
    final String password = _passwordController.text;

    if (nome.isEmpty || cognome.isEmpty || email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Per favore, compila tutti i campi.')),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PaginaHome(
          datiUtente: {
            'nome': nome,
            'cognome': cognome,
            'email': email,
          },
        ),
      ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _nomeController,
                  decoration: InputDecoration(labelText: 'Nome'),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _cognomeController,
                  decoration: InputDecoration(labelText: 'Cognome'),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _vaiAllaHome,
                  child: Text('Accedi'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
