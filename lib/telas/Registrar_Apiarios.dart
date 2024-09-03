// ignore_for_file: file_names

import 'package:appis_app/assets/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterApiarios extends StatefulWidget {
  const RegisterApiarios({super.key});

  @override
  State<RegisterApiarios> createState() => _RegisterApiariosState();
}

class _RegisterApiariosState extends State<RegisterApiarios> {
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
                    onPressed: () => context.go('/viewProductions'),
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
                          label: const Text('Apelido:'),
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
                          label: const Text('Descrição:'),
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
                          label: const Text('Localização:'),
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
                          label: const Text('Data:'),
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
                          label: const Text('Tipo Abelha:'),
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
                          label: const Text('Anotações:'),
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
                          onPressed: () => context.go('/viewProductions'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: paletaDeCores.amareloClaro,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          child: const Text(
                            'Salvar',
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
        ));
  }
}
