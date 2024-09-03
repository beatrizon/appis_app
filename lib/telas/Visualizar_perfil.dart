import 'package:appis_app/assets/colors/colors.dart';
import 'package:appis_app/telas/Autenticacao.dart';
import 'package:appis_app/telas/EditarPerfil.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:appis_app/assets/components/NavBar.dart'; // Importação da NavBar

class ViewPerfil extends StatefulWidget {
  const ViewPerfil({Key? key}) : super(key: key);

  @override
  State<ViewPerfil> createState() => _ViewPerfilState();
}

class _ViewPerfilState extends State<ViewPerfil> {
  int _selectedIndex = 0; // Índice inicial (Perfil)

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _logout() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: paletaDeCores.amareloClaro,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Deslogar'),
              onTap: (){}
            ),
          ],
        ),
      ),
      backgroundColor: paletaDeCores.fundoApp,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 40,
          top: 32,
          right: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 20,
              ),
              width: 341,
              height: 392,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nome',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Nome do Produtor',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'CPF',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '123.456.789-00',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'E-mail',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'teste@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Senha',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '****',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  // Chamar a classe EditPerfil() diretamente
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditPerfil()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: paletaDeCores.amareloClaro,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 8),
                    Text(
                      'Editar',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(context, _selectedIndex),
    );
  }
}
