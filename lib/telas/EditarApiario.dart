import 'package:appis_app/assets/colors/colors.dart';
import 'package:appis_app/telas/ApiarioTela.dart';
import 'package:appis_app/telas/Index_maps.dart';
import 'package:appis_app/telas/Visualizar_Producoes.dart';
import 'package:appis_app/telas/Visualizar_perfil.dart';
import 'package:flutter/material.dart';

class EditarApiario extends StatefulWidget {
  const EditarApiario({Key? key});

  @override
  State<EditarApiario> createState() => _EditarApiarioState();
}

class _EditarApiarioState extends State<EditarApiario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    // Navegue de volta à página anterior
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: paletaDeCores.preto,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: const Text(
                'Entre com as informações sobre sua produção.',
                style: TextStyle(
                  color: paletaDeCores.preto,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'nome do apiário',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.preto,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.fundoApp,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const Divider(
                      color: paletaDeCores.cinza,
                      thickness: 2.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Descrição',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.preto,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.fundoApp,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const Divider(
                      color: paletaDeCores.cinza,
                      thickness: 2.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Data',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.preto,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.fundoApp,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const Divider(
                      color: paletaDeCores.cinza,
                      thickness: 2.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Tipo Abelha',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.preto,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.fundoApp,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const Divider(
                      color: paletaDeCores.cinza,
                      thickness: 2.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Confirmar Senha:',
                        filled: true,
                        fillColor: paletaDeCores.fundoApp,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.preto,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: paletaDeCores.fundoApp,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const Divider(
                      color: paletaDeCores.cinza,
                      thickness: 2.0,
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {
                          // Adicione sua lógica de salvar aqui
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: paletaDeCores.amareloClaro,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Salvar',
                          style: TextStyle(
                            color: paletaDeCores.preto,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navegue para a página ViewPerfil
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => MapaPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: paletaDeCores.fundoApp,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: const BorderSide(
                              color: paletaDeCores.preto,
                            ),
                          ),
                        ),
                        child: const Text(
                          'Cancelar',
                          style: TextStyle(
                            color: paletaDeCores.preto,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
