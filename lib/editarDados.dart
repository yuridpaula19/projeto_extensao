import 'package:flutter/material.dart';
import 'package:projeto_extensao/drawer.dart';
import 'package:projeto_extensao/input.dart';

class editarDados extends StatefulWidget {
  const editarDados({super.key});

  @override
  State<editarDados> createState() => _editarDadosState();
}

class _editarDadosState extends State<editarDados> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 0, 130, 198),
        child: DrawerBody(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.red,
                height: MediaQuery.of(context).size.height * 0.69,
                child: Column(
                  children: [
                    Text(
                      "Meus Dados",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    InputMeusDados(
                      label: "Nome Completo",
                      placeHolder: "Nome completo",
                      controller: nomeController,
                      obscure: false,
                    ),
                    InputMeusDados(
                      label: "CPF",
                      placeHolder: "CPF",
                      controller: cpfController,
                      obscure: false,
                    ),
                    InputMeusDados(
                      label: "E-mail",
                      placeHolder: "E-mail",
                      controller: emailController,
                      obscure: false,
                    ),
                    InputMeusDados(
                      label: "Senha",
                      placeHolder: "Senha",
                      controller: senhaController,
                      obscure: true,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            print("teste");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red,
                            ),
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 35,
                            child: Text(
                              "Cancelar",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: 10,
                        // ),
                        GestureDetector(
                          onTap: () {
                            print("teste");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.lightGreen,
                            ),
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 35,
                            child: Text(
                              "Salvar",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Divider(
                      color: Color.fromARGB(255, 0, 130, 198),
                    ),
                    Image.asset(
                      "assets/logopp.jpg",
                      height: 100,
                      width: 150,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
