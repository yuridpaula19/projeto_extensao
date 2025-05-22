import 'package:flutter/material.dart';
import 'package:projeto_extensao/drawer.dart';
import 'package:projeto_extensao/input.dart';

class MeusDados extends StatefulWidget {
  const MeusDados({super.key});

  @override
  State<MeusDados> createState() => _MeusDadosState();
}

class _MeusDadosState extends State<MeusDados> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // backgroundColor: Colors.amber,
          // leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
          ),
      drawer: Drawer(
        backgroundColor: Colors.lightBlue,
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
                    Text("Meus Dados"),
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
                        child: Text(
                          "Editar",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        width: double.maxFinite,
                        height: 35,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Divider(
                      color: Colors.lightBlue,
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
